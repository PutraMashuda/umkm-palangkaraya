<div class="container">


       <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
          <div class="carousel-inner">
           <div class="carousel-item active mt-5">
              
              <img src="<?php echo base_url('assets/img/umkm-head.png') ?>" class="d-block w-100" alt="...">
            </div>
            <!-- <div class="carousel-item">
              <img src="..." class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="..." class="d-block w-100" alt="...">
            </div> -->
          </div>
        </div>

    <div class="row text-center mt-2">
        <?php foreach ($barang as $brg) : ?>

            <div class="card ml-3 mt-2" style="width: 16rem;">
              <img src="<?php echo base_url().'/uploads/'.$brg->gambar ?>" class="card-img-top" alt="..."> <br>
              <div class="card-body">
                <h5 class="card-title mb-1"><?php echo $brg->nama_brg ?></h5>
                <small><?php echo $brg->keterangan ?></small><br>
                 <br>

                
                
                <?php echo anchor('dashboard/detail/' .$brg->id_brg,'<div class="btn btn-sm btn-primary">Detail</div>') ?>
              </div>
            </div>

        <?php endforeach; ?>
        
    </div>
</div>