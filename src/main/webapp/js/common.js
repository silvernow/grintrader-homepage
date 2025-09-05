  // When scroll side fade in
  (function(){
    const io = new IntersectionObserver((entries)=>{
      entries.forEach(e=>{
        if(e.isIntersecting){
          e.target.classList.add('in');
          io.unobserve(e.target); // 한 번만 재생
        }
      });
    }, { threshold: 0.18, rootMargin: "0px 0px -10% 0px" });

    document.querySelectorAll('[data-fade]').forEach(el=>io.observe(el));
  })();

  // when scroll nav bg changing
  const navbar = document.getElementById("navbar");
  const logo = document.getElementById("logo");
  
  window.addEventListener("scroll", () => {
    if (window.scrollY > 50) {
      navbar.classList.add("scrolled");
      logo.src = logo.dataset.color; // 컬러 버전으로 교체
    } else {
      navbar.classList.remove("scrolled");
      logo.src = logo.dataset.white; // 화이트 버전으로 교체
    }
  });

  // Mobile slide menu toggle
  const body = document.body;
  const ham = document.getElementById('hamburger');
  const panel = document.getElementById('mobilePanel');
  const backdrop = document.getElementById('backdrop');

  function openMobile(){
    body.classList.add('mobile-open');
    ham.setAttribute('aria-expanded','true');
    body.style.overflow = 'hidden';
    panel.focus();
  }
  function closeMobile(){
    body.classList.remove('mobile-open');
    ham.setAttribute('aria-expanded','false');
    body.style.overflow = '';
  }

  ham.addEventListener('click', ()=>{
    const isOpen = body.classList.contains('mobile-open');
    isOpen ? closeMobile() : openMobile();
  });
  backdrop.addEventListener('click', closeMobile);
  window.addEventListener('keydown', (e)=>{
    if(e.key === 'Escape' && body.classList.contains('mobile-open')) closeMobile();
  });

  // Mobile when link clicked munu closed
  panel.querySelectorAll('a').forEach(a=>{
    a.addEventListener('click', (e)=>{
      closeMobile();
      const id = a.getAttribute('href');
      const target = document.querySelector(id);
      if(target){
        e.preventDefault();
        target.scrollIntoView({behavior:'smooth', block:'start'});
      }
    });
  });

  // Mobile close button
const closeBtn = document.getElementById('closeMobile');
if (closeBtn) {
  closeBtn.addEventListener('click', closeMobile);
}

  // Mobile menu toggle
  document.querySelector('.hamburger').addEventListener('click', function() {
    document.querySelector('.nav-links').classList.toggle('active');
});

// Close mobile menu when clicking on a link
document.querySelectorAll('.nav-links a').forEach(link => {
    link.addEventListener('click', () => {
        document.querySelector('.nav-links').classList.remove('active');
    });
});

// Scroll animation for sections
const sections = document.querySelectorAll('.section');

const observerOptions = {
    threshold: 0.1
};

const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
        if (entry.isIntersecting) {
            entry.target.classList.add('visible');
        }
    });
}, observerOptions);

sections.forEach(section => {
    observer.observe(section);
});

// Smooth scrolling for anchor links
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
    anchor.addEventListener('click', function(e) {
        e.preventDefault();
        
        const targetId = this.getAttribute('href');
        const targetElement = document.querySelector(targetId);
        
        if (targetElement) {
            window.scrollTo({
                top: targetElement.offsetTop - 80,
                behavior: 'smooth'
            });
        }
    });
});

// Metrics Count 
(function(){
  function formatNumber(n, useComma){
    return useComma ? n.toLocaleString() : String(n);
  }
  function countUp(el){
    const target   = parseFloat(el.dataset.count || '0');
    const dur      = parseInt(el.dataset.duration || '1400', 10);
    const prefix   = el.dataset.prefix || '';
    const suffix   = el.dataset.suffix || '';
    const useComma = (el.dataset.format || 'comma') === 'comma';

    const start = 0;
    const startTime = performance.now();
    function easeOutCubic(t){ return 1 - Math.pow(1 - t, 3); }

    function tick(now){
      const p = Math.min(1, (now - startTime) / dur);
      const v = Math.round(start + (target - start) * easeOutCubic(p));
      el.textContent = prefix + formatNumber(v, useComma) + suffix;
      if(p < 1) requestAnimationFrame(tick);
    }
    requestAnimationFrame(tick);
  }

  const io = new IntersectionObserver((entries)=>{
    entries.forEach(entry=>{
      if(entry.isIntersecting){
        const el = entry.target;
        if(!el.dataset.counted){
          el.dataset.counted = 'true';
          countUp(el);
        }
        io.unobserve(el);
      }
    });
  }, { threshold: 0.6 });

  document.querySelectorAll('[data-count]').forEach(el => {
    el.textContent = (el.dataset.prefix || '') + (el.dataset.format==='comma' ? '0' : '0') + (el.dataset.suffix || '');
    io.observe(el);
  });
})();

// Contact Modal
(function () {
  const openBtn = document.getElementById('openContactModal');
  const modal = document.getElementById('contactModal');
  const panel = document.getElementById('contactModalPanel');
  const backdrop = document.getElementById('contactModalBackdrop');
  const closeBtn = document.getElementById('closeContactModal');
  const firstFocus = document.getElementById('c_name');
  const form = document.getElementById('contactForm');

  let lastFocused = null;

  function openModal(e) {
    if (e) e.preventDefault();
    lastFocused = document.activeElement;
    modal.classList.remove('hidden');
    document.body.classList.add('overflow-hidden');
    requestAnimationFrame(() => {
      backdrop.classList.add('opacity-100');
      panel.classList.remove('opacity-0', 'scale-95');
      panel.classList.add('opacity-100', 'scale-100');
      firstFocus && firstFocus.focus();
    });
    document.addEventListener('keydown', onKeydown);
    trapFocus(panel);
  }

  function closeModal() {
    backdrop.classList.remove('opacity-100');
    panel.classList.remove('opacity-100', 'scale-100');
    panel.classList.add('opacity-0', 'scale-95');
    setTimeout(() => {
      modal.classList.add('hidden');
      document.body.classList.remove('overflow-hidden');
      document.removeEventListener('keydown', onKeydown);
      releaseFocus();
      lastFocused && lastFocused.focus();
    }, 180);
  }

  function onKeydown(e) {
    if (e.key === 'Escape') closeModal();
  }

  // Click handlers
  openBtn && openBtn.addEventListener('click', openModal);
  closeBtn && closeBtn.addEventListener('click', closeModal);
  backdrop && backdrop.addEventListener('click', closeModal);

  // prevent # link jump
  if (openBtn) openBtn.addEventListener('click', e => e.preventDefault());

  // (optional) fake submit handler
  form && form.addEventListener('submit', function (e) {
    // e.preventDefault(); // 실제 제출/연동 전 테스트 시 주석 해제
    // closeModal();
  });

  // Focus trap
  let focusable = [];
  let firstEl, lastEl;
  function trapFocus(container) {
    focusable = Array.from(container.querySelectorAll(
      'a[href], button, textarea, input, select, [tabindex]:not([tabindex="-1"])'
    )).filter(el => !el.hasAttribute('disabled'));
    firstEl = focusable[0];
    lastEl = focusable[focusable.length - 1];
    container.addEventListener('keydown', handleTab);
  }
  function releaseFocus() {
    panel.removeEventListener('keydown', handleTab);
  }
  function handleTab(e) {
    if (e.key !== 'Tab') return;
    if (focusable.length === 0) return;
    if (e.shiftKey && document.activeElement === firstEl) {
      e.preventDefault(); lastEl.focus();
    } else if (!e.shiftKey && document.activeElement === lastEl) {
      e.preventDefault(); firstEl.focus();
    }
  }
})();

const backToTopButton = document.getElementById("back-to-top");

window.addEventListener("scroll", () => {
const triggerPoint = window.innerHeight * 0.3;
if (window.pageYOffset > triggerPoint) {
backToTopButton.classList.remove("opacity-0", "invisible");
backToTopButton.classList.add("opacity-100", "visible");
} else {
backToTopButton.classList.remove("opacity-100", "visible");
backToTopButton.classList.add("opacity-0", "invisible");
}
});

backToTopButton.addEventListener("click", () => {
window.scrollTo({
top: 0,
behavior: "smooth",
});
});

$(document).ready(function() {
    $("#btnSend").click(function() {
		const cName = $("#cName").val().trim();
        const cEmail = $("#cEmail").val().trim();
		const cPhone = $("#cPhone").val().trim();
		const cMessage = $("#cMessage").val().trim();
        
		if (cName === "") {
            alert("이름을 입력해주세요.");
            $("#cName").focus();
            return;
        }

        if (cEmail === "") {
            alert("이메일을 입력해주세요.");
            $("#cEmail").focus();
            return;
        }
        
		var emailRegex = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/;
		if (!emailRegex.test(cEmail)) {
    		alert("올바른 이메일 주소를 입력해주세요.");
			$("#cEmail").focus();
    		return;
		}

		if (cPhone === "") {
            alert("휴대폰번호를 입력해주세요.");
            $("#cPhone").focus();
            return;
        }
        
        var phoneRegex = /^(01[016789]-?\d{3,4}-?\d{4}|0\d{1,2}-?\d{3,4}-?\d{4})$/;
		if (!phoneRegex.test(cPhone)) {
    		alert("올바른 휴대폰번호를 입력해주세요. (예: 010-1234-5678)");
    		$("#cPhone").focus();
    		return;
		}

		if (cMessage === "") {
            alert("내용을 입력해주세요.");
            $("#cMessage").focus();
            return;
        }
		
		const checkbox = $('#cPrivacy');
		if (!checkbox.is(':checked')) {
        	alert("개인정보 수집·이용에 동의해야 합니다.");
			return;
      	} else {
       		const sendData = {
	            name: cName,
	            email: cEmail,
				phone: cPhone,
				message: cMessage,
				agreePolicy: 'Y'
	        };
			
			var userConfirmed = confirm("등록하시겠습니까?");
			if (userConfirmed) {
	       		$.ajax({
		            url: "https://admin.grinnow.com/external/enquiry_insert",
		            type: "POST",
		            contentType: "application/json",
		            data: JSON.stringify(sendData),
		 			success: function(data) {
						if(data != null) {
							if (data["response"] == "SUCCESS"){
								alert("정상적으로 문의글이 등록되었습니다.");
								$('#mainForm')[0].reset();
								document.getElementById("contactModal").classList.add("hidden");
							}else{
								alert("등록에 실패하였습니다.");
							}
						}
		       		},
		            error: function(xhr, status, error) {
						alert("오류가 발생하였습니다.");
		            }
		        });
      		}
      	}
    });
});