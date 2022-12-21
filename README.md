# GazepointBiometrics PsychoPy Experiment

<div id="top"></div>

<!-- PROJECT SHIELDS -->

<div align="center">

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]

</div>

<br />
<div align="center">
<h3 align="center">JuPyJava Planner</h3>
  <p align="center">
    Java and Python wrapper for a use case of the PDDL library of the Julia language (PDDL.jl)
    <br />
    <a href="https://docs.juliahub.com/PDDL/"><strong>Explore the PDDL.jl documentation »</strong></a>
    <br />
    <br />
    <a href="https://github.com/hurxan/JuPyJava_Planner/issues">Report Bug</a>
    ·
    <a href="https://github.com/hurxan/JuPyJava_Planner/issues">Request Feature</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->

## About The Project

The general behavior of the program is defined inside the Planner.jl file. This is the Julia file that contains the kernel of the project where you can choose which file you need to solve by changing the domain and problem files.<br>
The Planner.py file is a simple wrapper to the Planner.jl file, it replicates the behaviour of the original planner and prints the results to the standard output.
The Planner.java file runs the python wrapper and measures the time of execution.

<p align="right">(<a href="#top">back to top</a>)</p>

### Built With

- [Julia](https://julialang.org/)
- [Python](https://www.python.org/)
- [Java](https://docs.oracle.com/en/java/index.html)

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- GETTING STARTED -->

## Getting Started

### Important

This project has been tested on a Debian 11 distro.

### Prerequisites

- Julia
- Python 3
- JDK
- python-jl

### Download

1. Clone the repo
   ```sh
   git clone https://github.com/hurxan/JuPyJava_Planner.git
   ```

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->

## Usage

Inside the examples folder there are some example domains taken from PlanningDomains.jl. Inside the Planner.jl file you can choose which domain and problem file to use and which algorithm and heuristic suits better for your usage.<br/>
As a result, at the end of the execution a txt file for each solution(ie. `blocksworld_problem-9_greedyplanner_hmax.txt`) will be placed inside the `output` folder.

The generated file contains the solution of the planning based on the algorithm and heuristics chosen.

_For more details about the data, please refer to the [OpenGaze API Documentation](https://www.gazept.com/downloads/)_

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## Contributing

Contributions are highly appreciated.

If you have a suggestion that would make this better, please fork the repo and create a pull request.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- CONTACT -->

## Contact

Andrei Senyuva - hurcanandrei.senyuva@unipd.it

[Project Link](https://github.com/hurxan/JuPyJava_Planner)

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->

## Acknowledgments

- [JuliaPlanner PlanningDomains.jl](https://github.com/JuliaPlanners/PlanningDomains.jl)

<!-- MARKDOWN LINKS & IMAGES -->

[contributors-shield]: https://img.shields.io/github/contributors/hurxan/JuPyJava_Planner.svg?style=for-the-badge
[contributors-url]: https://github.com/hurxan/JuPyJava_Planner/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/hurxan/JuPyJava_Planner.svg?style=for-the-badge
[forks-url]: https://github.com/hurxan/JuPyJava_Planner/network/members
[stars-shield]: https://img.shields.io/github/stars/hurxan/JuPyJava_Planner.svg?style=for-the-badge
[stars-url]: https://github.com/hurxan/JuPyJava_Planner/stargazers
[issues-shield]: https://img.shields.io/github/issues/hurxan/JuPyJava_Planner.svg?style=for-the-badge
[issues-url]: https://github.com/hurxan/JuPyJava_Planner/issues
[product-screenshot]: images/screenshot.png
