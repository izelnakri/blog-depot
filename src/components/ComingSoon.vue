<template>
  <div class="container">
    <section class="main-content">
      <div class="framed-art-text">
        <h1>{{ msg }}</h1>
      </div>
      <div class="comming-soon-art">
        <img src="../assets/art.svg" alt="comming soon illustration">
      </div>
    </section>
    <footer>
      <a href="https://www.linkedin.com/in/thomas-kleinendorst-188311144/">
        <img class="linkedin_logo" src="../assets/linkedin_logo.svg" alt="LinkedIn">
      </a>
    </footer>
  </div>
</template>

<script>
export default {
  name: 'ComingSoon',
  data() {
    return {
      msg: 'Coming soon!',
    };
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.container {
  margin: 0;
  padding: 0;
  height: 100%;
}

.main-content {
  height: 100%;

  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}

h1 {
  font-family: 'Alegreya Sans', sans-serif;
  text-transform: uppercase;
  margin: .1em 0;
  font-weight: normal;
  font-size: 3em;
}

.framed-art-text {
  display: inline-block;
  border-top: 2px solid black;
  border-bottom: 2px solid black;
  margin: 5px;
}

.comming-soon-art {
  width: 650px;
  margin: 90px;
  margin-bottom: 190px;
}

footer {
  width: 100%;
  height: 100px;
  position: absolute;
  bottom: 0;
  text-align: right;
}

.linkedin_logo {
  padding: 10px;
  margin: 0 70px;
  display: inline-block;
  width: 60px;

  /*transition*/
  transition: background-color 200ms;
  border-radius: 100%;
  background-color: rgba(0, 0, 0, 0);
}

.linkedin_logo:hover {
  background-color: rgba(0, 0, 0, 0.1);
}

/* Time for tricks: */

@media screen and (max-width: 730px) {
  .comming-soon-art {
    width: 90%;
  }

  .linkedin_logo {
    margin: 0 20px;
  }
}
</style>
