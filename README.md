<h3>Flavors</h3>

<ul>
  <li><strong>flavors:</strong> Configuration files for different app flavors like dev & prod.</li>
</ul>

<h3>Entry Points</h3>

<ul>
  <li><strong>main_dev.dart:</strong> Entry point for the development environment.</li>
  <li><strong>main_prod.dart:</strong> Entry point for the production environment.</li>
</ul>

<h2>Getting Started</h2>

<ol>
  <li>Clone the repository:</li>

  <pre><code>git clone https://gitlab.com/shakircam/flutter_assessment.git
cd YourRepositoryName</code></pre>

  <li>Switch to the appropriate branch (e.g., <code>develop</code>):</li>

  <pre><code>git checkout develop</code></pre>

  <li>Install dependencies:</li>

  <pre><code>flutter pub get</code></pre>

  <li>Run the app:</li>

  <pre><code>flutter run --flavor dev lib/main_dev.dart --release</code></pre>
  <pre><code>flutter run --flavor prod lib/main_prod.dart --release</code></pre>
</ol>
