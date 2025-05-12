<?php
namespace App\Http\Controllers\Backend;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\NearByAttraction;
use Illuminate\Support\Str;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Facades\DB;


class NearByAttractionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $attractions = NearByAttraction::latest()->get();
        return view('backend.near-by-attraction.index', compact('attractions'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.near-by-attraction.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'title' => 'required|string|max:255',
            'image_file' => 'required|image|mimes:jpeg,png,jpg,gif|max:5120',
            'description' => 'nullable|string',
        ]);

        try {
            if ($request->hasFile('image_file')) {
                $image = $request->file('image_file');
                $imageName = $this->processAndStoreImage($image, $validated['title']);
            }
            $attraction = NearByAttraction::create([
                'title' => $validated['title'],
                'slug' => NearByAttraction::createSlug($validated['title']),
                'image_file' => $imageName ?? null,
                'description' => $validated['description'],
            ]);
            return redirect('near-by-attractions')->with('success','Near by attraction created successfully!');
        } catch (\Exception $e) {
            return redirect()->back()->with('error', 'Error creating attraction: ' . $e->getMessage());
        }
    }

    private function processAndStoreImage($image, $title)
    {
        $directory = public_path('hotel-sankalp-image-file/near-by-img');
        if (!file_exists($directory)) {
            mkdir($directory, 0777, true);
        }
        $titleSlug = Str::slug($title);
        $imageName = $titleSlug . '_' . time() . '.webp';
        $img = Image::make($image->getRealPath());
        $img->resize(800, null, function ($constraint) {
            $constraint->aspectRatio();
            $constraint->upsize();
        });
        $img->save($directory . '/' . $imageName, 80, 'webp');
        return $imageName;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $attraction = NearByAttraction::findOrFail($id);
        return view('backend.near-by-attraction.edit', compact('attraction'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validatedData = $request->validate([
            'title' => 'required|string|max:255',
            'image_file' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:5120',
            'description' => 'nullable|string',
        ]);
        DB::beginTransaction();
        try {
            $attraction = NearByAttraction::findOrFail($id);
            
            if ($request->hasFile('image_file')) {
                $oldImagePath = $attraction->image_file 
                    ? public_path('hotel-sankalp-image-file/near-by-img/' . $attraction->image_file)
                    : null;
                try {
                    $image = $request->file('image_file');
                    $imageName = $this->processAndStoreImage($image, $validatedData['title']);
                    $attraction->image_file = $imageName;
                    if ($oldImagePath && file_exists($oldImagePath)) {
                        unlink($oldImagePath);
                    }
                } catch (\Exception $e) {
                    if (isset($imageName)) {
                        $newImagePath = public_path('hotel-sankalp-image-file/near-by-img/' . $imageName);
                        if (file_exists($newImagePath)) {
                            unlink($newImagePath);
                        }
                    }
                    throw $e;
                }
            }
            $attraction->title = $validatedData['title'];
            $attraction->description = $validatedData['description'];
            $attraction->save();
            DB::commit();
            
            return redirect('near-by-attractions')->with('success', 'Near by attraction updated successfully!');
        } catch (\Exception $e) {
            DB::rollBack();
            return redirect()->back()
                ->with('error', 'Error updating attraction: ' . $e->getMessage())
                ->withInput();
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DB::beginTransaction();
        try {
            $attraction = NearByAttraction::findOrFail($id);
            $imagePath = $attraction->image_file 
                ? public_path('hotel-sankalp-image-file/near-by-img/' . $attraction->image_file)
                : null;
            $attraction->delete();
            if ($imagePath && file_exists($imagePath)) {
                unlink($imagePath);
            }
            DB::commit();
            return redirect()->route('near-by-attractions')
                ->with('success', 'Attraction deleted successfully');
                
        } catch (\Exception $e) {
            DB::rollBack();
            
            return redirect()->route('near-by-attractions')
                ->with('error', 'Error deleting attraction: ' . $e->getMessage());
        }
    }
}
