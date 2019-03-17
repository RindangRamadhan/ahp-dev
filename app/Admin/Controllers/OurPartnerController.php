<?php

namespace App\Admin\Controllers;

use App\OurPartner;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use Illuminate\Support\Facades\Storage;

class OurPartnerController extends Controller
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
            ->header('Mitra Kami')
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
            ->header('Mitra Kami')
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
            ->header('Mitra Kami')
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
            ->header('Mitra Kami')
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
        $grid = new Grid(new OurPartner);

        $grid->id('Id');
        $grid->partner('Mitra');
        $grid->logo('Logo')->display(function ($logo) use ($app) {
            return $app->displayImage($logo);
        });
        $grid->filter(function($filter){
        
            // Add a column filter
            $filter->like('mitra', 'Mitra');
        });

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
        $show = new Show(OurPartner::findOrFail($id));

        $show->id('Id');
        $show->partner('Partner');
        $show->logo('Logo');
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
        $form = new Form(new OurPartner);

        $form->text('partner', 'Partner');
        $form->image('logo', 'Logo');

        return $form;
    }
}
