<?php

namespace App\Admin\Controllers;

use App\Benefit;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use Encore\Admin\Facades\Admin;
use Illuminate\Support\Facades\Storage;

class BenefitController extends Controller
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
            ->header('Manfaat')
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
            ->header('Manfaat')
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
            ->header('Manfaat')
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
            ->header('Manfaat')
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
        $grid = new Grid(new Benefit);

        $grid->id('Id');

        if (Admin::user()->cannot('auth.management')) {
            $grid->disableCreateButton();
        }

        $grid->title('Judul');
        $grid->image1('Gambar Judul')->display(function ($image1) use ($app) {
            return $app->displayImage($image1);
        });

        $grid->benefit1('Manfaat Pertama')->display(function ($benefit1) {
            return $benefit1;
        });

        $grid->image2('Gambar Pertama')->display(function ($image2) use ($app) {
            return $app->displayImage($image2);
        });

        $grid->benefit2('Manfaat Kedua')->display(function ($benefit2) {
            return $benefit2;
        });
        
        $grid->image3('Gambar Kedua')->display(function ($image3) use ($app) {
            return $app->displayImage($image3);
        });

        $grid->filter(function($filter){
        
            // Add a column filter
            $filter->like('title', 'Judul');
        });

        $grid->created_at('Created at');
        $grid->updated_at('Updated at');

        $grid->actions(function (Grid\Displayers\Actions $actions) {
            if (Admin::user()->cannot('auth.management')) {
                $actions->disableDelete();
            }
        });

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
        $show = new Show(Benefit::findOrFail($id));

        $show->id('Id');
        $show->title('Judul');
        $show->image1('Gambar Judul');
        $show->benefit1('Manfaat Pertama');
        $show->image2('Gambar Pertama');
        $show->benefit2('Manfaat Kedua');
        $show->image3('Gambar Kedua');
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
        $form = new Form(new Benefit);

        $form->text('title', 'Judul')->rules('required', [
            'required' => 'Judul tidak boleh kosong',
        ]);
        $form->image('image1', 'Gambar Judul')->rules('required', [
            'required' => 'Gambar Judul tidak boleh kosong',
        ]);
        $form->editor('benefit1', 'Manfaat Pertama')->rules('required', [
            'required' => 'Manfaat Pertama tidak boleh kosong',
        ]);
        $form->image('image2', 'Gambar Pertama')->rules('required', [
            'required' => 'Gambar Pertama tidak boleh kosong',
        ]);
        $form->editor('benefit2', 'Manfaat Kedua')->rules('required', [
            'required' => 'Manfaat Kedua tidak boleh kosong',
        ]);
        $form->image('image3', 'Gambar Kedua')->rules('required', [
            'required' => 'Gambar Kedua tidak boleh kosong',
        ]);

        return $form;
    }
}
