<?php

namespace App\Admin\Controllers;

use App\Testimonial;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class TestimonialController extends Controller
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
            ->header('Index')
            ->description('description')
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
            ->header('Detail')
            ->description('description')
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
            ->header('Edit')
            ->description('description')
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
            ->header('Create')
            ->description('description')
            ->body($this->form());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Testimonial);

        $grid->id('Id');
        $grid->filter(function($filter){
        
            // Add a column filter
            $filter->like('nama', 'Nama');
            $filter->like('jenis_kelamin', 'Jenis Kelamin');
        });
        $grid->nama('Nama');
        $grid->jenis_kelamin('Jenis kelamin')->display(function($jenis_kelamin)
        {
            if ($jenis_kelamin == 1) {
                return 'laki-laki';
            } else {
                return 'perempuan';
            }
        });
        $grid->pesan('Pesan');
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
        $show = new Show(Testimonial::findOrFail($id));

        $show->id('Id');
        $show->nama('Nama');
        $show->jenis_kelamin('Jenis kelamin');
        $show->pesan('Pesan');
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
        $form = new Form(new Testimonial);

        $form->text('nama', 'Nama')->rules('required', [
            'required' => 'Nama tidak boleh kosong',
        ]);
        $form->select('jenis_kelamin', 'Jenis kelamin')->options([1 => 'laki-laki', 2 => 'perempuan'])->rules('required', [
            'required' => 'Jenis kelamin tidak boleh kosong',
        ]);
        $form->textarea('pesan', 'Pesan')->rules('required', [
            'required' => 'Pesan tidak boleh kosong',
        ]);
        
        return $form;
    }
}
