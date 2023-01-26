<?= $this->extend("layouts/template"); ?>

<?= $this->section("content"); ?>


  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">

    <div class="container">
      <div class="row">
        <div class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1" data-aos="fade-up" data-aos-delay="200">
          <h1>Solusi Terbaik Untuk Mengelola Toko Mu</h1>
          <h2>Mengelola Toko mu hanya disini</h2>
          <div class="d-flex justify-content-center justify-content-lg-start">
            <a href="#about" class="btn-get-started scrollto">Get Started</a>
           
          </div>
        </div>
        <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="zoom-in" data-aos-delay="200">
          <img src="assets/img/hero-img.png" class="img-fluid animated" alt="">
        </div>
      </div>
    </div>

  </section><!-- End Hero -->

  <main id="main">

      <!-- ======= Skills Section ======= -->
      <section id="skills" class="skills">
      <div class="container" data-aos="fade-up">

        <div class="row">
          <div class="col-lg-6 d-flex align-items-center" data-aos="fade-right" data-aos-delay="100">
            <img src="assets/img/skills.png" class="img-fluid" alt="">
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0 content" data-aos="fade-left" data-aos-delay="100">
            <h3>TOKOKU - Shop management</h3>
            <p class="fst-italic">
              adalah sebuah platform yang terbaik dan terpercaya untuk mengelola Toko mu dengan menggunakan Platform web, kamu tidak perlu lagi mencatat barang dan mengelola toko mu dengan menggunakan buku, semua yang kamu butuhkan ada disini dalam mengelola toko mu
            </p>

            <!-- <div class="skills-content">

              <div class="progress">
                <span class="skill">HTML <i class="val">100%</i></span>
                <div class="progress-bar-wrap">
                  <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
              </div>

              <div class="progress">
                <span class="skill">CSS <i class="val">90%</i></span>
                <div class="progress-bar-wrap">
                  <div class="progress-bar" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
              </div>

              <div class="progress">
                <span class="skill">JavaScript <i class="val">75%</i></span>
                <div class="progress-bar-wrap">
                  <div class="progress-bar" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
              </div>

              <div class="progress">
                <span class="skill">Photoshop <i class="val">55%</i></span>
                <div class="progress-bar-wrap">
                  <div class="progress-bar" role="progressbar" aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
                </div>
              </div>

            </div> -->

          </div>
        </div>

      </div>
    </section><!-- End Skills Section -->



    <!-- ======= About Us Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>About Us</h2>
        </div>

        <div class="row content">
          <div class="col-lg-6">
            <p>
              Aplikasi ini dibuat dengan framework codeigniter dengan memberikan beberapa fitur antara lain :
            </p>
            <ul>
              <li><i class="ri-check-double-line"></i>Mengelola Barang</li>
              <li><i class="ri-check-double-line"></i>Mengelola Keuangan</li>
            </ul>
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0">
            <p>
            Aplikasi Ini bersifat open source yang dibuat oleh Fajri Rinaldi Chan untuk menyelesaikan project akhir dalam mata kuliah php/Mysql pada program studi pendidikan teknik informatika dan komputer Universitas Islam Negeri Sjech M.Djamil Djambek Bukittinggi
            </p>
            <a href="#" class="btn-learn-more">Learn More</a>
          </div>
        </div>

      </div>
    </section><!-- End About Us Section -->


  </main><!-- End #main -->

 

<?= $this->endSection(); ?>