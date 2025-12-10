# Automated Performance Testing Pipeline (JMeter + Jenkins)

## Conestoga College – Nov 2025

This project implements an **automated performance testing pipeline** using **Apache JMeter** and **Jenkins CI/CD** to evaluate web application performance under varying load conditions. The pipeline runs tests automatically, generates results, and provides reports for continuous monitoring.

---

## Features

- Automated JMeter test execution via Jenkins  
- Load, stress, and performance test suites  
- HTML and CSV reports generated automatically  
- Sample results archived for analysis  
- Reduces manual testing effort and enables proactive performance optimization  

---

## Project Structure

performance-testing-pipeline/
│
├── jmeter-tests/ # JMeter .jmx test plans
│ └── demoblaze-test-plan.jmx
│
├── jenkins/ # Jenkins automation scripts
│ └── run-performance-test.sh
│
├── results-samples/ # Sample results
│ ├── result.jtl
│ └── html-report-screenshot.png
│
├── README.md
└── .gitignore



---

## Tools Used

- [Apache JMeter](https://jmeter.apache.org/) – Performance testing  
- [Jenkins](https://www.jenkins.io/) – CI/CD automation  
- Git & GitHub – Version control  
- Bash scripting – Test automation  

---

## How to Run Locally

1. Make sure **Java** and **JMeter** are installed on your system.  
2. Open a terminal in the project folder.  
3. Run the shell script:

bash
chmod +x jenkins/run-performance-test.sh
./jenkins/run-performance-test.sh

4. JMeter will execute the test plan in non-GUI mode, generate results in results-samples/result.jtl, and create an HTML report in HTML_Report/.

Note: For a sample report, see results-samples/html-report-screenshot.png.

Optional: Integrate with Jenkins

To automate this pipeline in Jenkins:

Create a Freestyle or Pipeline job in Jenkins.

Configure it to run jenkins/run-performance-test.sh.

(Optional) Install the HTML Publisher Plugin to display reports directly in Jenkins.

Archive artifacts or view the HTML report from Jenkins workspace.

