defmodule PortfolioWeb.ResumeLive do
  use PortfolioWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    resume_url = Application.get_env(:portfolio, :resume_url)
    {:ok, assign(socket, :resume_url, resume_url)}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <div class="min-h-screen bg-gradient-to-br from-slate-50 to-blue-50 py-12 px-4">
      <!-- Home Button - Top Left -->
      <a
        href={~p"/"}
        class="fixed top-8 left-8 px-6 py-3 bg-slate-700 text-white font-semibold rounded-lg hover:bg-slate-800 transition-colors shadow-lg z-50"
      >
        ← Home
      </a>

      <!-- Download Button - Bottom Left -->
      <a
        href={@resume_url}
        target="_blank"
        rel="noopener noreferrer"
        class="fixed bottom-8 left-8 px-6 py-3 bg-slate-700 text-white font-semibold rounded-lg hover:bg-slate-800 transition-colors shadow-lg z-50"
      >
        Download PDF
      </a>

      <div class="max-w-4xl mx-auto bg-white shadow-2xl">
        <!-- Header -->
        <div class="bg-gradient-to-r from-slate-600 to-slate-700 text-white px-8 py-10">
          <h1 class="text-4xl font-bold mb-3">STEPHEN-MICHAEL BROOKS</h1>
          <div class="flex flex-wrap gap-4 text-slate-200 text-sm">
            <span>214-280-6288</span>
            <span>•</span>
            <span>sm.brooks@outlook.com</span>
            <span>•</span>
            <a href="https://linkedin.com/in/smfbrooks" class="hover:text-white underline">
              linkedin.com/in/smfbrooks
            </a>
          </div>
        </div>

        <div class="px-8 py-8">
          <!-- Summary -->
          <section class="mb-8">
            <p class="text-slate-700 leading-relaxed mb-4">
              Senior Software Engineer (TS/SCI) with 7+ years of experience designing and delivering high-availability backend systems in AWS, Azure, and OCI. Proven track record of organizing work among engineers, architecting scalable solutions, and mentoring engineers. Adept at translating customer needs into technical requirements and delivering features that improve reliability, performance, and usability.
            </p>
            <p class="text-slate-700 leading-relaxed">
              Seeking a senior or principal engineering position that blends deep technical ownership with opportunities for direct customer engagement. Interested in roles that involve designing scalable services, leading cross-functional initiatives, and collaborating closely with customers to shape product direction and ensure exceptional reliability.
            </p>
          </section>

          <!-- Professional Experience -->
          <section class="mb-8">
            <h2 class="text-2xl font-bold text-slate-800 border-b-2 border-slate-400 pb-2 mb-6">
              PROFESSIONAL EXPERIENCE
            </h2>

            <!-- Oracle -->
            <div class="mb-6">
              <div class="flex justify-between items-start mb-2">
                <div>
                  <h3 class="text-xl font-bold text-slate-800">Senior Software Engineer</h3>
                  <p class="text-slate-600 font-semibold">Oracle, Seattle, WA</p>
                </div>
                <span class="text-slate-600 italic">May 2024 – Oct 2025</span>
              </div>
              <ul class="list-disc list-outside ml-5 space-y-2 text-slate-700">
                <li>
                  Led architecture and development of new control plane for OCI commercial and disconnected cloud service bridge, enabling visibility of specially approved observability information for uncleared OCI service operators. The MTTR improvements are estimated to be ~60% for all OCI service incidents in disconnected clouds.
                </li>
                <li>
                  Designed and implemented the transition from an MVP to a resilient, GA-ready application by restructuring the datastores to bring the service from a 1-to-1 commercial region to airgapped region data pipeline to a fully region-agnostic 1-to-n architecture.
                </li>
                <li>
                  Collaborated with 3+ cross-functional teams, reducing design rework by ~25%
                </li>
              </ul>
            </div>

            <!-- Microsoft -->
            <div class="mb-6">
              <div class="flex justify-between items-start mb-2">
                <div>
                  <h3 class="text-xl font-bold text-slate-800">Software Engineer</h3>
                  <p class="text-slate-600 font-semibold">Microsoft Azure, Redmond, WA</p>
                </div>
                <span class="text-slate-600 italic">Jul 2021 – May 2024</span>
              </div>
              <ul class="list-disc list-outside ml-5 space-y-2 text-slate-700">
                <li>
                  Designed the architecture and devised the implementation plan for increasing resiliency by reducing outages to near-zero for our MVP single-node based architecture to a multi-node one
                </li>
                <li>
                  Led the design and implementation of data security and integrity features for air-gapped data transfers handling 500+ TB of enterprise data monthly.
                </li>
                <li>
                  Led the design and implementation of a custom integration testing framework enabling developers to test changes without deploying all application components, increasing developer velocity by an estimated 30–40% for small and medium-size contributions.
                </li>
                <li>
                  Scrum and technical lead for a 5-person Agile team under a new engineering manager
                </li>
                <li>
                  Implemented direct feedback from enterprise customers, leading to iterative changes that increased adoption and confidence in the new product offerings.
                </li>
                <li>
                  Served as a primary on call engineer resolving hundreds of internal and external customer incidents per year.
                </li>
              </ul>
            </div>

            <!-- AWS EC2 -->
            <div class="mb-6">
              <div class="flex justify-between items-start mb-2">
                <div>
                  <h3 class="text-xl font-bold text-slate-800">Systems Development Engineer, EC2</h3>
                  <p class="text-slate-600 font-semibold">Amazon Web Services, Seattle, WA</p>
                </div>
                <span class="text-slate-600 italic">Mar 2019 – Jul 2021</span>
              </div>
              <ul class="list-disc list-outside ml-5 space-y-2 text-slate-700">
                <li>
                  Primary on call supporting ~3,000 EC2/EBS services. Constant communication with service owners across the globe to resolve issues and perform incident analysis and RCAs
                </li>
                <li>
                  Co-created a homegrown service that greatly increased asynchronous communication bandwidth between cleared and uncleared service operators and support engineers. Additionally, this service empowered uncleared engineers to perform specially approved tasks so that the limited number of cleared operators did not have to be involved.
                </li>
                <li>
                  Reduced average high-severity incident resolution time from 4 hours to 2.5 hours.
                </li>
                <li>
                  Deployed hundreds of services during new air-gapped region build efforts, closely working with service owners to troubleshoot and correct incompatibilities along the way
                </li>
              </ul>
            </div>

            <!-- AWS Systems Analyst -->
            <div class="mb-6">
              <div class="flex justify-between items-start mb-2">
                <div>
                  <h3 class="text-xl font-bold text-slate-800">Systems Analyst</h3>
                  <p class="text-slate-600 font-semibold">Amazon Web Services, Seattle, WA</p>
                </div>
                <span class="text-slate-600 italic">Jun 2018 – Mar 2019</span>
              </div>
              <ul class="list-disc list-outside ml-5 space-y-2 text-slate-700">
                <li>
                  Developed operational tools reducing Kinesis Firehose issue mitigation errors by ~20%.
                </li>
                <li>
                  Led patching efforts across 250+ service fleets, completing updates 30% faster with zero downtime.
                </li>
                <li>
                  Rearchitected the patching deployment pipelines for all of the S3 indexing service to improve scalability and eliminating manual patching efforts on thousands of instances
                </li>
              </ul>
            </div>

            <!-- Ericsson -->
            <div class="mb-6">
              <div class="flex justify-between items-start mb-2">
                <div>
                  <h3 class="text-xl font-bold text-slate-800">DevOps Engineer</h3>
                  <p class="text-slate-600 font-semibold">Ericsson Inc., Plano, TX</p>
                </div>
                <span class="text-slate-600 italic">Jan 2017 – Jun 2018</span>
              </div>
              <ul class="list-disc list-outside ml-5 space-y-2 text-slate-700">
                <li>
                  Managed observability dashboards for 6 distinct services
                </li>
                <li>
                  Provided research, proof of concept, and implementation plan for replacing Zabbix metric agents with Prometheus agents to reduce costs, flexibility, and scalability of observability tooling across all of the Network Services organization
                </li>
                <li>
                  Developed automated functional UI regression and validation test suites for applications used across ~12 teams and radio technicians on-site
                </li>
                <li>
                  Assisted lead engineers with research and implementation plans for on-prem OpenStack monitoring solutions
                </li>
              </ul>
            </div>

            <!-- USAF -->
            <div class="mb-6">
              <div class="flex justify-between items-start mb-2">
                <div>
                  <h3 class="text-xl font-bold text-slate-800">
                    Radio Frequency Transmission Systems Journeyman
                  </h3>
                  <p class="text-slate-600 font-semibold">USAF & Texas Air National Guard</p>
                </div>
                <span class="text-slate-600 italic">Apr 2010 – Apr 2019</span>
              </div>
              <ul class="list-disc list-outside ml-5 space-y-2 text-slate-700">
                <li>
                  Engineered communications for missions supporting 200+ deployed personnel across 5 geographic sites, ensuring 100% operational readiness.
                </li>
                <li>
                  Trained and led 6 technicians, improving troubleshooting proficiency by ~30% through structured drills and mentoring.
                </li>
              </ul>
            </div>
          </section>

          <!-- Technical Skills -->
          <section class="mb-8">
            <h2 class="text-2xl font-bold text-slate-800 border-b-2 border-slate-400 pb-2 mb-6">
              TECHNICAL SKILLS
            </h2>
            <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
              <div>
                <h3 class="font-bold text-slate-800 mb-2">Languages:</h3>
                <p class="text-slate-700">C#, Java, Python, Elixir, C++</p>
              </div>
              <div>
                <h3 class="font-bold text-slate-800 mb-2">Cloud:</h3>
                <p class="text-slate-700">AWS, Azure, Oracle Cloud Infrastructure (OCI)</p>
              </div>
              <div>
                <h3 class="font-bold text-slate-800 mb-2">DevOps:</h3>
                <p class="text-slate-700">Docker, Kubernetes, Linux, CI/CD, IaC (Terraform)</p>
              </div>
              <div>
                <h3 class="font-bold text-slate-800 mb-2">Other:</h3>
                <p class="text-slate-700">
                  System Design, Observability, Agile Leadership, Software Architectures
                </p>
              </div>
            </div>
          </section>

          <!-- Publications -->
          <section class="mb-8">
            <h2 class="text-2xl font-bold text-slate-800 border-b-2 border-slate-400 pb-2 mb-6">
              PUBLICATIONS
            </h2>
            <div class="text-slate-700">
              <p>
                Jafarzadeh, M., <span class="font-bold">Brooks, S.</span>, Yu, S., Prabhakaran, B., & Tadesse, Y. (2021). A wearable sensor vest for social humanoid robots with GPGPU, IoT, and modular software architecture. <span class="italic">Robotics and Autonomous Systems</span>, 139, 103536.
                <a
                  href="https://doi.org/10.1016/j.robot.2020.103536"
                  target="_blank"
                  rel="noopener noreferrer"
                  class="text-blue-600 hover:text-blue-800 underline"
                >
                  https://doi.org/10.1016/j.robot.2020.103536
                </a>
              </p>
            </div>
          </section>

          <!-- Education -->
          <section class="mb-8">
            <h2 class="text-2xl font-bold text-slate-800 border-b-2 border-slate-400 pb-2 mb-6">
              EDUCATION
            </h2>
            <div class="space-y-4">
              <div>
                <h3 class="font-bold text-slate-800">B.S., Telecommunications Engineering</h3>
                <p class="text-slate-700 italic">University of Texas at Dallas (2018)</p>
              </div>
              <div>
                <h3 class="font-bold text-slate-800">A.S., Electronic Systems Technology</h3>
                <p class="text-slate-700 italic">Community College of the Air Force (2013)</p>
              </div>
            </div>
          </section>

        </div>
      </div>
    </div>
    """
  end
end
