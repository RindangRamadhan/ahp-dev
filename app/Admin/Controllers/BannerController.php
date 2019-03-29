<?php

namespace App\Admin\Controllers;

use App\Banner;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use Illuminate\Support\Facades\Storage;

class BannerController extends Controller
{
    use HasResourceActions;

    /**
     * Index interface.
     *
     * @param Content $content
     * @return Content
     */
    public function index(Content $content)
    {
        return $content
            ->header('Banner')
            ->description('List')
            ->body($this->grid());
    }

    /**
     * Show interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function show($id, Content $content)
    {
        return $content
            ->header('Banner')
            ->description('Detail')
            ->body($this->detail($id));
    }

    /**
     * Edit interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function edit($id, Content $content)
    {
        return $content
            ->header('Banner')
            ->description('Edit')
            ->body($this->form()->edit($id));
    }

    /**
     * Create interface.
     *
     * @param Content $content
     * @return Content
     */
    public function create(Content $content)
    {
        return $content
            ->header('Banner')
            ->description('Create')
            ->body($this->form());
    }

    private function displayImage($path) {
        
        $src = Storage::disk(config('admin.upload.disk'))->url($path);
        return "<img src='$src' style='max-width:100px;max-height:100px' class='img img-thumbnail' />";
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $app = $this;
        $grid = new Grid(new Banner);

        $grid->id('Id');
        $grid->foto('Foto')->display(function ($foto) use ($app) {
            return $app->displayImage($foto);
        });
        $grid->title('Title');
        $grid->sub_title('Sub Title');
        $grid->button('Button');
        $grid->url('URL');
        $grid->created_at('Created at');
        $grid->updated_at('Updated at');

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Banner::findOrFail($id));

        $show->id('Id');
        $show->foto('Foto');
        $show->title('Title');
        $show->Sub_title('Sub Title');
        $show->button('Button');
        $show->url('URL');
        $show->created_at('Created at');
        $show->updated_at('Updated at');

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Banner);

        $form->image('foto', 'Foto')->rules('required', [
            'required' => 'Foto tidak boleh kosong',
        ]);
        $form->text('title', 'Title')->rules('required', [
            'required' => 'Title tidak boleh kosong',
        ]);
        $form->text('sub_title', 'Sub Title')->rules('required', [
            'required' => 'Sub Title tidak boleh kosong',
        ]);
        $form->text('button', 'Button')->rules('required', [
            'required' => 'Button tidak boleh kosong',
        ]);
        $form->text('url', 'URL')->rules('required', [
            'required' => 'URL tidak boleh kosong',
        ]);

        return $form;
    }
}
