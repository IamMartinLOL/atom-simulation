	.file	"render.cpp"
 # GNU C++17 (x86_64-posix-seh, Built by MinGW-Builds project) version 11.4.0 (x86_64-w64-mingw32)
 #	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.25-GMP

 # GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
 # options passed: -mtune=core2 -march=nocona -O2 -fno-asynchronous-unwind-tables
	.text
	.section	.text$_ZNKSt5ctypeIcE8do_widenEc,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNKSt5ctypeIcE8do_widenEc
	.def	_ZNKSt5ctypeIcE8do_widenEc;	.scl	2;	.type	32;	.endef
_ZNKSt5ctypeIcE8do_widenEc:
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/locale_facets.h:1087:       do_widen(char __c) const
	movl	%edx, %eax	 # tmp87, __c
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/locale_facets.h:1088:       { return __c; }
	ret	
	.text
	.p2align 4
	.globl	_Z25framebuffer_size_callbackP10GLFWwindowii
	.def	_Z25framebuffer_size_callbackP10GLFWwindowii;	.scl	2;	.type	32;	.endef
_Z25framebuffer_size_callbackP10GLFWwindowii:
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:29: 	glViewport(0, 0, width, height);
	movl	%r8d, %r9d	 # tmp87,
	xorl	%ecx, %ecx	 #
	movl	%edx, %r8d	 # tmp86,
	xorl	%edx, %edx	 #
	jmp	*__imp_glViewport(%rip)	 #
	.p2align 4
	.def	__tcf_0;	.scl	3;	.type	32;	.endef
__tcf_0:
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/iostream:74:   static ios_base::Init __ioinit;
	leaq	_ZStL8__ioinit(%rip), %rcx	 #, tmp82
	jmp	_ZNSt8ios_base4InitD1Ev	 #
	.p2align 4
	.globl	_Z14mouse_callbackP10GLFWwindowdd
	.def	_Z14mouse_callbackP10GLFWwindowdd;	.scl	2;	.type	32;	.endef
_Z14mouse_callbackP10GLFWwindowdd:
	subq	$136, %rsp	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:129: 		lastX = xpos;
	pxor	%xmm5, %xmm5	 # _127
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:130: 		lastY = ypos;
	pxor	%xmm4, %xmm4	 # _128
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:128: 	if (firstMouse) {
	cmpb	$0, firstMouse(%rip)	 #, firstMouse
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:127: void mouse_callback(GLFWwindow* window, double xpos, double ypos) {
	movaps	%xmm6, 64(%rsp)	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:129: 		lastX = xpos;
	cvtsd2ss	%xmm1, %xmm5	 # xpos, _127
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:130: 		lastY = ypos;
	cvtsd2ss	%xmm2, %xmm4	 # ypos, _128
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:127: void mouse_callback(GLFWwindow* window, double xpos, double ypos) {
	movaps	%xmm7, 80(%rsp)	 #,
	movaps	%xmm8, 96(%rsp)	 #,
	movaps	%xmm9, 112(%rsp)	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:128: 	if (firstMouse) {
	jne	.L6	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:134: 	float xoffset = xpos - lastX;
	movss	lastX(%rip), %xmm3	 # lastX, pretmp_112
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:135: 	float yoffset = lastY - ypos;
	movss	lastY(%rip), %xmm0	 # lastY, pretmp_114
.L7:
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:134: 	float xoffset = xpos - lastX;
	cvtss2sd	%xmm3, %xmm3	 # pretmp_112, tmp124
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:135: 	float yoffset = lastY - ypos;
	cvtss2sd	%xmm0, %xmm0	 # pretmp_114, tmp126
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:134: 	float xoffset = xpos - lastX;
	subsd	%xmm3, %xmm1	 # tmp124, tmp125
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:137: 	lastX = xpos;
	movss	%xmm5, lastX(%rip)	 # _127, lastX
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:135: 	float yoffset = lastY - ypos;
	subsd	%xmm2, %xmm0	 # ypos, tmp127
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:141: 	xoffset *= sensitivity;
	movss	.LC4(%rip), %xmm2	 #, tmp129
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:138: 	lastY = ypos;
	movss	%xmm4, lastY(%rip)	 # _128, lastY
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:134: 	float xoffset = xpos - lastX;
	cvtsd2ss	%xmm1, %xmm1	 # tmp125, xoffset
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:141: 	xoffset *= sensitivity;
	mulss	%xmm2, %xmm1	 # tmp129, xoffset
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:144: 	yaw   += xoffset;
	addss	yaw(%rip), %xmm1	 # yaw, _13
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:135: 	float yoffset = lastY - ypos;
	cvtsd2ss	%xmm0, %xmm0	 # tmp127, yoffset
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:142: 	yoffset *= sensitivity;
	mulss	%xmm2, %xmm0	 # tmp129, yoffset
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:145: 	pitch += yoffset;
	addss	pitch(%rip), %xmm0	 # pitch, _15
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:147: 	if (pitch > 89.0f) pitch = 89.0f;
	comiss	.LC5(%rip), %xmm0	 #, _15
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:144: 	yaw   += xoffset;
	movss	%xmm1, yaw(%rip)	 # _13, yaw
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:147: 	if (pitch > 89.0f) pitch = 89.0f;
	jbe	.L17	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:147: 	if (pitch > 89.0f) pitch = 89.0f;
	movss	.LC0(%rip), %xmm9	 #, prephitmp_126
	leaq	60(%rsp), %rdx	 #, tmp155
	movl	$0x42b20000, pitch(%rip)	 #, pitch
	movss	.LC3(%rip), %xmm8	 #, _123
	leaq	56(%rsp), %r8	 #, tmp154
	movss	.LC2(%rip), %xmm6	 #, prephitmp_122
	movss	.LC7(%rip), %xmm7	 #, tmp156
.L10:
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_trigonometric.inl:13: 		return degrees * static_cast<genType>(0.01745329251994329576923690768489);
	movaps	%xmm1, %xmm0	 # _13, _13
	mulss	%xmm7, %xmm0	 # tmp156, _13
	call	sincosf	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:151: 	front.x = cos(glm::radians(yaw)) * cos(glm::radians(pitch));
	movss	56(%rsp), %xmm7	 #, _18
	mulss	%xmm6, %xmm7	 # prephitmp_122, _18
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:153: 	front.z = sin(glm::radians(yaw)) * cos(glm::radians(pitch));
	mulss	60(%rsp), %xmm6	 #, _19
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:711: 			v1.z * v2.z);
	movaps	%xmm7, %xmm0	 # _18, tmp143
	mulss	%xmm7, %xmm0	 # _18, tmp143
	movaps	%xmm6, %xmm1	 # _19, tmp145
	mulss	%xmm6, %xmm1	 # _19, tmp145
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:53: 			return tmp.x + tmp.y + tmp.z;
	addss	%xmm9, %xmm0	 # prephitmp_126, tmp144
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:53: 			return tmp.x + tmp.y + tmp.z;
	addss	%xmm1, %xmm0	 # tmp145, _62
	pxor	%xmm1, %xmm1	 # tmp146
	ucomiss	%xmm0, %xmm1	 # _62, tmp146
	ja	.L18	 #,
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/cmath:464:   { return __builtin_sqrtf(__x); }
	sqrtss	%xmm0, %xmm0	 # _62, _52
.L14:
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_exponential.inl:138: 		return static_cast<genType>(1) / sqrt(x);
	movss	.LC9(%rip), %xmm1	 #, tmp147
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:155: }
	movaps	112(%rsp), %xmm9	 #,
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_exponential.inl:138: 		return static_cast<genType>(1) / sqrt(x);
	divss	%xmm0, %xmm1	 # _52, _64
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:675: 			v.z * scalar);
	mulss	%xmm1, %xmm7	 # _64, tmp149
	mulss	%xmm1, %xmm8	 # _64, tmp151
	mulss	%xmm1, %xmm6	 # _64, tmp153
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:154: 	cameraFront = glm::normalize(front);
	movss	%xmm7, cameraFront(%rip)	 # tmp149, cameraFront.D.83946.x
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:155: }
	movaps	80(%rsp), %xmm7	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:154: 	cameraFront = glm::normalize(front);
	movss	%xmm8, 4+cameraFront(%rip)	 # tmp151, cameraFront.D.83952.y
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:155: }
	movaps	96(%rsp), %xmm8	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:154: 	cameraFront = glm::normalize(front);
	movss	%xmm6, 8+cameraFront(%rip)	 # tmp153, cameraFront.D.83958.z
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:155: }
	movaps	64(%rsp), %xmm6	 #,
	addq	$136, %rsp	 #,
	ret	
	.p2align 4,,10
	.p2align 3
.L6:
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:131: 		firstMouse = false;
	movb	$0, firstMouse(%rip)	 #, firstMouse
	movaps	%xmm4, %xmm0	 # _128, pretmp_114
	movaps	%xmm5, %xmm3	 # _127, pretmp_112
	jmp	.L7	 #
	.p2align 4,,10
	.p2align 3
.L17:
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:148: 	if (pitch < -89.0f) pitch = -89.0f;
	movss	.LC6(%rip), %xmm2	 #, tmp133
	comiss	%xmm0, %xmm2	 # _15, tmp133
	jbe	.L20	 #,
	movss	.LC0(%rip), %xmm9	 #, prephitmp_126
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:148: 	if (pitch < -89.0f) pitch = -89.0f;
	movss	%xmm2, pitch(%rip)	 # tmp133, pitch
	leaq	60(%rsp), %rdx	 #, tmp155
	movss	.LC1(%rip), %xmm8	 #, _123
	leaq	56(%rsp), %r8	 #, tmp154
	movss	.LC2(%rip), %xmm6	 #, prephitmp_122
	movss	.LC7(%rip), %xmm7	 #, tmp156
	jmp	.L10	 #
.L18:
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/cmath:464:   { return __builtin_sqrtf(__x); }
	call	sqrtf	 #
	jmp	.L14	 #
.L20:
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_trigonometric.inl:13: 		return degrees * static_cast<genType>(0.01745329251994329576923690768489);
	movss	.LC7(%rip), %xmm7	 #, tmp156
	leaq	60(%rsp), %rdx	 #, tmp155
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:145: 	pitch += yoffset;
	movss	%xmm0, pitch(%rip)	 # _15, pitch
	leaq	56(%rsp), %r8	 #, tmp154
	movss	%xmm1, 52(%rsp)	 # _13, %sfp
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_trigonometric.inl:13: 		return degrees * static_cast<genType>(0.01745329251994329576923690768489);
	mulss	%xmm7, %xmm0	 # tmp156, tmp136
	movq	%r8, 40(%rsp)	 # tmp154, %sfp
	movq	%rdx, 32(%rsp)	 # tmp155, %sfp
	call	sincosf	 #
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/cmath:426:   { return __builtin_sinf(__x); }
	movss	60(%rsp), %xmm8	 #, _123
	movq	32(%rsp), %rdx	 # %sfp, tmp155
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:711: 			v1.z * v2.z);
	movaps	%xmm8, %xmm9	 # _123, prephitmp_126
	movq	40(%rsp), %r8	 # %sfp, tmp154
	mulss	%xmm8, %xmm9	 # _123, prephitmp_126
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/cmath:185:   { return __builtin_cosf(__x); }
	movss	56(%rsp), %xmm6	 #, prephitmp_122
	movss	52(%rsp), %xmm1	 # %sfp, _13
	jmp	.L10	 #
	.p2align 4
	.globl	_Z12key_callbackP10GLFWwindowiiii
	.def	_Z12key_callbackP10GLFWwindowiiii;	.scl	2;	.type	32;	.endef
_Z12key_callbackP10GLFWwindowiiii:
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:89: 	if (action == GLFW_PRESS || action == GLFW_REPEAT) {
	subl	$1, %r9d	 #, tmp190
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:89: 	if (action == GLFW_PRESS || action == GLFW_REPEAT) {
	cmpl	$1, %r9d	 #, tmp190
	jbe	.L41	 #,
	ret	
	.p2align 4,,10
	.p2align 3
.L41:
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:88: void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods) {
	pushq	%r12	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:90: 		if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS)
	movl	$87, %edx	 #,
	movq	%rcx, %r12	 # tmp291, window
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:88: void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods) {
	subq	$96, %rsp	 #,
	movaps	%xmm6, 32(%rsp)	 #,
	movaps	%xmm7, 48(%rsp)	 #,
	movaps	%xmm8, 64(%rsp)	 #,
	movaps	%xmm9, 80(%rsp)	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:90: 		if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS)
	call	glfwGetKey	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:90: 		if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS)
	cmpl	$1, %eax	 #, tmp293
	je	.L42	 #,
.L23:
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:92: 		if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS)
	movl	$83, %edx	 #,
	movq	%r12, %rcx	 # window,
	call	glfwGetKey	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:92: 		if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS)
	cmpl	$1, %eax	 #, tmp294
	je	.L43	 #,
.L24:
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:94: 		if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS)
	movl	$65, %edx	 #,
	movq	%r12, %rcx	 # window,
	call	glfwGetKey	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:94: 		if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS)
	cmpl	$1, %eax	 #, tmp295
	je	.L44	 #,
.L25:
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:96: 		if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS)
	movl	$68, %edx	 #,
	movq	%r12, %rcx	 # window,
	call	glfwGetKey	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:96: 		if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS)
	cmpl	$1, %eax	 #, tmp297
	je	.L45	 #,
.L29:
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:98: 		if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
	movl	$256, %edx	 #,
	movq	%r12, %rcx	 # window,
	call	glfwGetKey	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:98: 		if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
	cmpl	$1, %eax	 #, tmp299
	je	.L46	 #,
.L33:
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:104: }
	movaps	32(%rsp), %xmm6	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:100: 		if(glfwGetKey(window, GLFW_KEY_LEFT_SHIFT == GLFW_PRESS)){
	movq	%r12, %rcx	 # window,
	xorl	%edx, %edx	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:104: }
	movaps	48(%rsp), %xmm7	 #,
	movaps	64(%rsp), %xmm8	 #,
	movaps	80(%rsp), %xmm9	 #,
	addq	$96, %rsp	 #,
	popq	%r12	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:100: 		if(glfwGetKey(window, GLFW_KEY_LEFT_SHIFT == GLFW_PRESS)){
	jmp	glfwGetKey	 #
	.p2align 4,,10
	.p2align 3
.L43:
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:93: 			cameraPos -= cameraSpeed * cameraFront;
	movss	cameraSpeed(%rip), %xmm0	 # cameraSpeed, cameraSpeed.4_26
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:693: 			scalar * v.z);
	movss	8+cameraFront(%rip), %xmm2	 # cameraFront.D.83958.z, _28
	movss	4+cameraFront(%rip), %xmm3	 # cameraFront.D.83952.y, _30
	mulss	%xmm0, %xmm2	 # cameraSpeed.4_26, _28
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:276: 		this->x -= static_cast<T>(v.x);
	movss	cameraPos(%rip), %xmm1	 # cameraPos.D.83946.x, cameraPos.D.83946.x
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:693: 			scalar * v.z);
	mulss	%xmm0, %xmm3	 # cameraSpeed.4_26, _30
	mulss	cameraFront(%rip), %xmm0	 # cameraFront.D.83946.x, tmp211
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:276: 		this->x -= static_cast<T>(v.x);
	subss	%xmm0, %xmm1	 # tmp211, tmp212
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:277: 		this->y -= static_cast<T>(v.y);
	movss	4+cameraPos(%rip), %xmm0	 # cameraPos.D.83952.y, cameraPos.D.83952.y
	subss	%xmm3, %xmm0	 # _30, tmp216
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:276: 		this->x -= static_cast<T>(v.x);
	movss	%xmm1, cameraPos(%rip)	 # tmp212, cameraPos.D.83946.x
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:277: 		this->y -= static_cast<T>(v.y);
	movss	%xmm0, 4+cameraPos(%rip)	 # tmp216, cameraPos.D.83952.y
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:278: 		this->z -= static_cast<T>(v.z);
	movss	8+cameraPos(%rip), %xmm0	 # cameraPos.D.83958.z, cameraPos.D.83958.z
	subss	%xmm2, %xmm0	 # _28, tmp220
	movss	%xmm0, 8+cameraPos(%rip)	 # tmp220, cameraPos.D.83958.z
	jmp	.L24	 #
	.p2align 4,,10
	.p2align 3
.L42:
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:91: 			cameraPos += cameraSpeed * cameraFront;
	movss	cameraSpeed(%rip), %xmm0	 # cameraSpeed, cameraSpeed.2_12
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:693: 			scalar * v.z);
	movss	8+cameraFront(%rip), %xmm1	 # cameraFront.D.83958.z, _14
	movss	4+cameraFront(%rip), %xmm2	 # cameraFront.D.83952.y, _16
	mulss	%xmm0, %xmm1	 # cameraSpeed.2_12, _14
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:248: 		this->z += static_cast<T>(v.z);
	addss	8+cameraPos(%rip), %xmm1	 # cameraPos.D.83958.z, tmp204
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:693: 			scalar * v.z);
	mulss	%xmm0, %xmm2	 # cameraSpeed.2_12, _16
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:247: 		this->y += static_cast<T>(v.y);
	addss	4+cameraPos(%rip), %xmm2	 # cameraPos.D.83952.y, tmp200
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:693: 			scalar * v.z);
	mulss	cameraFront(%rip), %xmm0	 # cameraFront.D.83946.x, tmp195
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:246: 		this->x += static_cast<T>(v.x);
	addss	cameraPos(%rip), %xmm0	 # cameraPos.D.83946.x, tmp197
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:248: 		this->z += static_cast<T>(v.z);
	movss	%xmm1, 8+cameraPos(%rip)	 # tmp204, cameraPos.D.83958.z
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:247: 		this->y += static_cast<T>(v.y);
	movss	%xmm2, 4+cameraPos(%rip)	 # tmp200, cameraPos.D.83952.y
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:246: 		this->x += static_cast<T>(v.x);
	movss	%xmm0, cameraPos(%rip)	 # tmp197, cameraPos.D.83946.x
	jmp	.L23	 #
	.p2align 4,,10
	.p2align 3
.L46:
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:99: 			glfwSetWindowShouldClose(window, GLFW_TRUE);
	movl	$1, %edx	 #,
	movq	%r12, %rcx	 # window,
	call	glfwSetWindowShouldClose	 #
	jmp	.L33	 #
	.p2align 4,,10
	.p2align 3
.L45:
	movss	4+cameraFront(%rip), %xmm7	 # MEM[(union ._anon_60 *)&cameraFront + 4B], _78
	movss	cameraFront(%rip), %xmm1	 # MEM[(union ._anon_59 *)&cameraFront], _77
	movss	8+cameraFront(%rip), %xmm0	 # MEM[(union ._anon_61 *)&cameraFront + 8B], _79
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	movaps	%xmm7, %xmm4	 # _78, tmp265
	movss	cameraUp(%rip), %xmm6	 # MEM[(union ._anon_59 *)&cameraUp], _80
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	movaps	%xmm1, %xmm9	 # _77, tmp264
	movss	4+cameraUp(%rip), %xmm2	 # MEM[(union ._anon_60 *)&cameraUp + 4B], _81
	movss	8+cameraUp(%rip), %xmm3	 # MEM[(union ._anon_61 *)&cameraUp + 8B], _82
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	mulss	%xmm6, %xmm4	 # _80, tmp265
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:97: 			cameraPos += glm::normalize(glm::cross(cameraFront, cameraUp)) * cameraSpeed;
	movss	cameraSpeed(%rip), %xmm8	 # cameraSpeed, cameraSpeed.8_54
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:76: 				x.z * y.x - y.z * x.x,
	mulss	%xmm0, %xmm6	 # _79, tmp266
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:76: 				x.z * y.x - y.z * x.x,
	mulss	%xmm3, %xmm1	 # _82, tmp267
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:75: 				x.y * y.z - y.y * x.z,
	mulss	%xmm2, %xmm0	 # _81, tmp269
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:75: 				x.y * y.z - y.y * x.z,
	mulss	%xmm3, %xmm7	 # _82, tmp268
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	mulss	%xmm2, %xmm9	 # _81, tmp264
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	subss	%xmm1, %xmm6	 # tmp267, _138
	subss	%xmm0, %xmm7	 # tmp269, _141
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:711: 			v1.z * v2.z);
	movaps	%xmm6, %xmm0	 # _138, tmp270
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	subss	%xmm4, %xmm9	 # tmp265, _133
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:711: 			v1.z * v2.z);
	mulss	%xmm6, %xmm0	 # _138, tmp270
	movaps	%xmm7, %xmm1	 # _141, tmp271
	mulss	%xmm7, %xmm1	 # _141, tmp271
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:53: 			return tmp.x + tmp.y + tmp.z;
	addss	%xmm1, %xmm0	 # tmp271, tmp272
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:711: 			v1.z * v2.z);
	movaps	%xmm9, %xmm1	 # _133, tmp273
	mulss	%xmm9, %xmm1	 # _133, tmp273
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:53: 			return tmp.x + tmp.y + tmp.z;
	addss	%xmm1, %xmm0	 # tmp273, _121
	pxor	%xmm1, %xmm1	 # tmp274
	ucomiss	%xmm0, %xmm1	 # _121, tmp274
	ja	.L37	 #,
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/cmath:464:   { return __builtin_sqrtf(__x); }
	sqrtss	%xmm0, %xmm0	 # _121, _122
.L32:
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_exponential.inl:138: 		return static_cast<genType>(1) / sqrt(x);
	movss	.LC9(%rip), %xmm2	 #, tmp275
	divss	%xmm0, %xmm2	 # _122, tmp275
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:675: 			v.z * scalar);
	mulss	%xmm2, %xmm7	 # _123, tmp277
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_exponential.inl:138: 		return static_cast<genType>(1) / sqrt(x);
	movaps	%xmm2, %xmm1	 # tmp275, _123
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:675: 			v.z * scalar);
	mulss	%xmm2, %xmm6	 # _123, tmp282
	mulss	%xmm9, %xmm1	 # _133, tmp287
	mulss	%xmm8, %xmm7	 # cameraSpeed.8_54, tmp278
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:246: 		this->x += static_cast<T>(v.x);
	addss	cameraPos(%rip), %xmm7	 # cameraPos.D.83946.x, tmp280
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:675: 			v.z * scalar);
	mulss	%xmm8, %xmm6	 # cameraSpeed.8_54, tmp283
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:247: 		this->y += static_cast<T>(v.y);
	addss	4+cameraPos(%rip), %xmm6	 # cameraPos.D.83952.y, tmp285
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:675: 			v.z * scalar);
	mulss	%xmm8, %xmm1	 # cameraSpeed.8_54, tmp288
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:248: 		this->z += static_cast<T>(v.z);
	addss	8+cameraPos(%rip), %xmm1	 # cameraPos.D.83958.z, tmp290
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:246: 		this->x += static_cast<T>(v.x);
	movss	%xmm7, cameraPos(%rip)	 # tmp280, cameraPos.D.83946.x
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:247: 		this->y += static_cast<T>(v.y);
	movss	%xmm6, 4+cameraPos(%rip)	 # tmp285, cameraPos.D.83952.y
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:248: 		this->z += static_cast<T>(v.z);
	movss	%xmm1, 8+cameraPos(%rip)	 # tmp290, cameraPos.D.83958.z
	jmp	.L29	 #
	.p2align 4,,10
	.p2align 3
.L44:
	movss	4+cameraFront(%rip), %xmm7	 # MEM[(union ._anon_60 *)&cameraFront + 4B], _69
	movss	cameraFront(%rip), %xmm1	 # MEM[(union ._anon_59 *)&cameraFront], _68
	movss	8+cameraFront(%rip), %xmm0	 # MEM[(union ._anon_61 *)&cameraFront + 8B], _70
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	movaps	%xmm7, %xmm4	 # _69, tmp229
	movss	cameraUp(%rip), %xmm6	 # MEM[(union ._anon_59 *)&cameraUp], _71
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	movaps	%xmm1, %xmm9	 # _68, tmp228
	movss	4+cameraUp(%rip), %xmm2	 # MEM[(union ._anon_60 *)&cameraUp + 4B], _72
	movss	8+cameraUp(%rip), %xmm3	 # MEM[(union ._anon_61 *)&cameraUp + 8B], _73
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	mulss	%xmm6, %xmm4	 # _71, tmp229
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:95: 			cameraPos -= glm::normalize(glm::cross(cameraFront, cameraUp)) * cameraSpeed;
	movss	cameraSpeed(%rip), %xmm8	 # cameraSpeed, cameraSpeed.6_40
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:76: 				x.z * y.x - y.z * x.x,
	mulss	%xmm0, %xmm6	 # _70, tmp230
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:76: 				x.z * y.x - y.z * x.x,
	mulss	%xmm3, %xmm1	 # _73, tmp231
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:75: 				x.y * y.z - y.y * x.z,
	mulss	%xmm2, %xmm0	 # _72, tmp233
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:75: 				x.y * y.z - y.y * x.z,
	mulss	%xmm3, %xmm7	 # _73, tmp232
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	mulss	%xmm2, %xmm9	 # _72, tmp228
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	subss	%xmm1, %xmm6	 # tmp231, _110
	subss	%xmm0, %xmm7	 # tmp233, _113
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:711: 			v1.z * v2.z);
	movaps	%xmm6, %xmm0	 # _110, tmp234
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	subss	%xmm4, %xmm9	 # tmp229, _105
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:711: 			v1.z * v2.z);
	mulss	%xmm6, %xmm0	 # _110, tmp234
	movaps	%xmm7, %xmm1	 # _113, tmp235
	mulss	%xmm7, %xmm1	 # _113, tmp235
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:53: 			return tmp.x + tmp.y + tmp.z;
	addss	%xmm1, %xmm0	 # tmp235, tmp236
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:711: 			v1.z * v2.z);
	movaps	%xmm9, %xmm1	 # _105, tmp237
	mulss	%xmm9, %xmm1	 # _105, tmp237
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:53: 			return tmp.x + tmp.y + tmp.z;
	addss	%xmm1, %xmm0	 # tmp237, _93
	pxor	%xmm1, %xmm1	 # tmp238
	ucomiss	%xmm0, %xmm1	 # _93, tmp238
	ja	.L36	 #,
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/cmath:464:   { return __builtin_sqrtf(__x); }
	sqrtss	%xmm0, %xmm0	 # _93, _94
.L28:
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_exponential.inl:138: 		return static_cast<genType>(1) / sqrt(x);
	movss	.LC9(%rip), %xmm1	 #, tmp239
	divss	%xmm0, %xmm1	 # _94, _95
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:276: 		this->x -= static_cast<T>(v.x);
	movss	cameraPos(%rip), %xmm0	 # cameraPos.D.83946.x, cameraPos.D.83946.x
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:675: 			v.z * scalar);
	mulss	%xmm1, %xmm7	 # _95, tmp242
	mulss	%xmm1, %xmm6	 # _95, tmp248
	mulss	%xmm9, %xmm1	 # _105, tmp254
	mulss	%xmm8, %xmm7	 # cameraSpeed.6_40, tmp243
	mulss	%xmm8, %xmm6	 # cameraSpeed.6_40, tmp249
	mulss	%xmm8, %xmm1	 # cameraSpeed.6_40, tmp255
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:276: 		this->x -= static_cast<T>(v.x);
	subss	%xmm7, %xmm0	 # tmp243, tmp244
	movss	%xmm0, cameraPos(%rip)	 # tmp244, cameraPos.D.83946.x
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:277: 		this->y -= static_cast<T>(v.y);
	movss	4+cameraPos(%rip), %xmm0	 # cameraPos.D.83952.y, cameraPos.D.83952.y
	subss	%xmm6, %xmm0	 # tmp249, tmp250
	movss	%xmm0, 4+cameraPos(%rip)	 # tmp250, cameraPos.D.83952.y
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:278: 		this->z -= static_cast<T>(v.z);
	movss	8+cameraPos(%rip), %xmm0	 # cameraPos.D.83958.z, cameraPos.D.83958.z
	subss	%xmm1, %xmm0	 # tmp255, tmp256
	movss	%xmm0, 8+cameraPos(%rip)	 # tmp256, cameraPos.D.83958.z
	jmp	.L25	 #
.L37:
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/cmath:464:   { return __builtin_sqrtf(__x); }
	call	sqrtf	 #
	jmp	.L32	 #
.L36:
	call	sqrtf	 #
	jmp	.L28	 #
	.p2align 4
	.globl	_Z13perspectiveGLdddd
	.def	_Z13perspectiveGLdddd;	.scl	2;	.type	32;	.endef
_Z13perspectiveGLdddd:
	pushq	%rbp	 #
	movq	%rsp, %rbp	 #,
	subq	$48, %rsp	 #,
	andq	$-16, %rsp	 #,
	subq	$48, %rsp	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:35: 	double fH = tan(fovY / 360 * pi) * zNear;
	divsd	.LC10(%rip), %xmm0	 #, tmp93
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:35: 	double fH = tan(fovY / 360 * pi) * zNear;
	mulsd	.LC11(%rip), %xmm0	 #, tmp95
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:33: void perspectiveGL(double fovY, double aspect, double zNear, double zFar) {
	movaps	%xmm6, 48(%rsp)	 #,
	movapd	%xmm2, %xmm6	 # tmp104, zNear
	movaps	%xmm7, 64(%rsp)	 #,
	movapd	%xmm3, %xmm7	 # tmp105, zFar
	movaps	%xmm8, 80(%rsp)	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:33: void perspectiveGL(double fovY, double aspect, double zNear, double zFar) {
	movapd	%xmm1, %xmm8	 # tmp103, aspect
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:35: 	double fH = tan(fovY / 360 * pi) * zNear;
	call	tan	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:36: 	double fW = fH * aspect;
	movapd	%xmm8, %xmm1	 # aspect, aspect
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:37: 	glFrustum(-fW, fW, -fH, fH, zNear, zFar);
	movq	.LC12(%rip), %xmm4	 #, tmp98
	movsd	%xmm7, 40(%rsp)	 # zFar,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:35: 	double fH = tan(fovY / 360 * pi) * zNear;
	movapd	%xmm0, %xmm3	 # tmp106, tmp106
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:37: 	glFrustum(-fW, fW, -fH, fH, zNear, zFar);
	movsd	%xmm6, 32(%rsp)	 # zNear,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:35: 	double fH = tan(fovY / 360 * pi) * zNear;
	mulsd	%xmm6, %xmm3	 # zNear, tmp106
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:36: 	double fW = fH * aspect;
	mulsd	%xmm3, %xmm1	 # fH, aspect
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:37: 	glFrustum(-fW, fW, -fH, fH, zNear, zFar);
	movapd	%xmm3, %xmm2	 # fH, tmp97
	xorpd	%xmm4, %xmm2	 # tmp98, tmp97
	xorpd	%xmm1, %xmm4	 # fW, tmp99
	movapd	%xmm4, %xmm0	 # tmp99,
	call	*__imp_glFrustum(%rip)	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:38: }
	movaps	48(%rsp), %xmm6	 #,
	movaps	64(%rsp), %xmm7	 #,
	movaps	80(%rsp), %xmm8	 #,
	leave	
	ret	
	.p2align 4
	.globl	_Z8lookAtGLddddddddd
	.def	_Z8lookAtGLddddddddd;	.scl	2;	.type	32;	.endef
_Z8lookAtGLddddddddd:
	pushq	%rbp	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:44: 		glm::vec3 f(centerX - eyeX, centerY - eyeY, centerZ - eyeZ);
	subsd	%xmm0, %xmm3	 # eyeX, tmp154
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:43: 	double upX, double upY, double upZ) {
	movq	%rsp, %rbp	 #,
	pushq	%rdi	 #
	subq	$160, %rsp	 #,
	andq	$-16, %rsp	 #,
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:54: 		: x(static_cast<T>(_x))
	cvtsd2ss	%xmm3, %xmm3	 # tmp154, _51
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:43: 	double upX, double upY, double upZ) {
	subq	$112, %rsp	 #,
	movaps	%xmm8, 144(%rsp)	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:44: 		glm::vec3 f(centerX - eyeX, centerY - eyeY, centerZ - eyeZ);
	movsd	48(%rbp), %xmm8	 # centerY, centerY
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:43: 	double upX, double upY, double upZ) {
	movaps	%xmm7, 128(%rsp)	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:44: 		glm::vec3 f(centerX - eyeX, centerY - eyeY, centerZ - eyeZ);
	movsd	56(%rbp), %xmm7	 # centerZ, centerZ
	subsd	%xmm1, %xmm8	 # eyeY, tmp155
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:43: 	double upX, double upY, double upZ) {
	movaps	%xmm6, 112(%rsp)	 #,
	movaps	%xmm11, 192(%rsp)	 #,
	movapd	%xmm0, %xmm11	 # tmp211, eyeX
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:44: 		glm::vec3 f(centerX - eyeX, centerY - eyeY, centerZ - eyeZ);
	subsd	%xmm2, %xmm7	 # eyeZ, tmp156
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:43: 	double upX, double upY, double upZ) {
	movaps	%xmm12, 208(%rsp)	 #,
	movapd	%xmm1, %xmm12	 # tmp212, eyeY
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:711: 			v1.z * v2.z);
	movaps	%xmm3, %xmm1	 # _51, tmp158
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:55: 		, y(static_cast<T>(_y))
	cvtsd2ss	%xmm8, %xmm8	 # tmp155, _52
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:711: 			v1.z * v2.z);
	movaps	%xmm8, %xmm0	 # _52, tmp157
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:43: 	double upX, double upY, double upZ) {
	movaps	%xmm15, 256(%rsp)	 #,
	pxor	%xmm15, %xmm15	 # tmp209
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:711: 			v1.z * v2.z);
	mulss	%xmm3, %xmm1	 # _51, tmp158
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:56: 		, z(static_cast<T>(_z))
	cvtsd2ss	%xmm7, %xmm7	 # tmp156, _53
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:43: 	double upX, double upY, double upZ) {
	movaps	%xmm13, 224(%rsp)	 #,
	movapd	%xmm2, %xmm13	 # tmp213, eyeZ
	movaps	%xmm9, 160(%rsp)	 #,
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:711: 			v1.z * v2.z);
	mulss	%xmm8, %xmm0	 # _52, tmp157
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:43: 	double upX, double upY, double upZ) {
	movaps	%xmm10, 176(%rsp)	 #,
	movaps	%xmm14, 240(%rsp)	 #,
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:53: 			return tmp.x + tmp.y + tmp.z;
	addss	%xmm1, %xmm0	 # tmp158, tmp159
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:711: 			v1.z * v2.z);
	movaps	%xmm7, %xmm1	 # _53, tmp160
	mulss	%xmm7, %xmm1	 # _53, tmp160
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:53: 			return tmp.x + tmp.y + tmp.z;
	addss	%xmm1, %xmm0	 # tmp160, _155
	ucomiss	%xmm0, %xmm15	 # _155, tmp209
	ja	.L62	 #,
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/cmath:464:   { return __builtin_sqrtf(__x); }
	sqrtss	%xmm0, %xmm0	 # _155, _156
.L52:
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:54: 		: x(static_cast<T>(_x))
	pxor	%xmm6, %xmm6	 # _48
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:55: 		, y(static_cast<T>(_y))
	pxor	%xmm10, %xmm10	 # _49
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:54: 		: x(static_cast<T>(_x))
	cvtsd2ss	64(%rbp), %xmm6	 # upX, _48
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_exponential.inl:138: 		return static_cast<genType>(1) / sqrt(x);
	movss	.LC9(%rip), %xmm14	 #, tmp210
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:55: 		, y(static_cast<T>(_y))
	cvtsd2ss	72(%rbp), %xmm10	 # upY, _49
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:56: 		, z(static_cast<T>(_z))
	pxor	%xmm9, %xmm9	 # _50
	cvtsd2ss	80(%rbp), %xmm9	 # upZ, _50
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_exponential.inl:138: 		return static_cast<genType>(1) / sqrt(x);
	movaps	%xmm14, %xmm1	 # tmp210, _157
	divss	%xmm0, %xmm1	 # _156, _157
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:711: 			v1.z * v2.z);
	movaps	%xmm10, %xmm0	 # _49, tmp163
	mulss	%xmm10, %xmm0	 # _49, tmp163
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:675: 			v.z * scalar);
	mulss	%xmm1, %xmm7	 # _157, _158
	mulss	%xmm1, %xmm8	 # _157, _159
	mulss	%xmm1, %xmm3	 # _157, _160
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:711: 			v1.z * v2.z);
	movaps	%xmm6, %xmm1	 # _48, tmp164
	mulss	%xmm6, %xmm1	 # _48, tmp164
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:53: 			return tmp.x + tmp.y + tmp.z;
	addss	%xmm1, %xmm0	 # tmp164, tmp165
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:711: 			v1.z * v2.z);
	movaps	%xmm9, %xmm1	 # _50, tmp166
	mulss	%xmm9, %xmm1	 # _50, tmp166
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:53: 			return tmp.x + tmp.y + tmp.z;
	addss	%xmm1, %xmm0	 # tmp166, _142
	ucomiss	%xmm0, %xmm15	 # _142, tmp209
	ja	.L63	 #,
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/cmath:464:   { return __builtin_sqrtf(__x); }
	sqrtss	%xmm0, %xmm0	 # _142, _62
.L55:
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_exponential.inl:138: 		return static_cast<genType>(1) / sqrt(x);
	movaps	%xmm14, %xmm1	 # tmp210, _144
	divss	%xmm0, %xmm1	 # _62, _144
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:675: 			v.z * scalar);
	movaps	%xmm10, %xmm0	 # _49, _49
	mulss	%xmm1, %xmm0	 # _144, _49
	mulss	%xmm1, %xmm6	 # _144, _147
	mulss	%xmm1, %xmm9	 # _144, _145
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	movaps	%xmm0, %xmm10	 # _146, tmp169
	mulss	%xmm3, %xmm10	 # _160, tmp169
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	movaps	%xmm6, %xmm1	 # _147, tmp170
	mulss	%xmm8, %xmm1	 # _159, tmp170
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:75: 				x.y * y.z - y.y * x.z,
	mulss	%xmm7, %xmm0	 # _158, tmp174
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:76: 				x.z * y.x - y.z * x.x,
	mulss	%xmm7, %xmm6	 # _158, tmp171
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	subss	%xmm1, %xmm10	 # tmp170, _126
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:76: 				x.z * y.x - y.z * x.x,
	movaps	%xmm9, %xmm1	 # _145, tmp172
	mulss	%xmm3, %xmm1	 # _160, tmp172
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:75: 				x.y * y.z - y.y * x.z,
	mulss	%xmm8, %xmm9	 # _159, tmp173
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	subss	%xmm1, %xmm6	 # tmp172, _131
	subss	%xmm0, %xmm9	 # tmp174, _134
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:711: 			v1.z * v2.z);
	movaps	%xmm6, %xmm0	 # _131, tmp175
	mulss	%xmm6, %xmm0	 # _131, tmp175
	movaps	%xmm9, %xmm1	 # _134, tmp176
	mulss	%xmm9, %xmm1	 # _134, tmp176
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:53: 			return tmp.x + tmp.y + tmp.z;
	addss	%xmm1, %xmm0	 # tmp176, tmp177
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:711: 			v1.z * v2.z);
	movaps	%xmm10, %xmm1	 # _126, tmp178
	mulss	%xmm10, %xmm1	 # _126, tmp178
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:53: 			return tmp.x + tmp.y + tmp.z;
	addss	%xmm1, %xmm0	 # tmp178, _114
	ucomiss	%xmm0, %xmm15	 # _114, tmp209
	ja	.L64	 #,
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/cmath:464:   { return __builtin_sqrtf(__x); }
	sqrtss	%xmm0, %xmm0	 # _114, _115
.L58:
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_exponential.inl:138: 		return static_cast<genType>(1) / sqrt(x);
	movaps	%xmm14, %xmm4	 # tmp210, _116
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:51: 		float m[16] = {
	xorl	%eax, %eax	 # tmp182
	movl	$6, %ecx	 #, tmp183
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_exponential.inl:138: 		return static_cast<genType>(1) / sqrt(x);
	divss	%xmm0, %xmm4	 # _115, _116
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:51: 		float m[16] = {
	leaq	56(%rsp), %rdi	 #, tmp181
	rep stosq
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:58: 		glMultMatrixf(m);
	leaq	48(%rsp), %rcx	 #, tmp200
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:51: 		float m[16] = {
	movl	$0, (%rdi)	 #, MEM <char[52]> [(float[16] *)&m + 8B]
	movss	%xmm14, 108(%rsp)	 # tmp210, m[15]
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:675: 			v.z * scalar);
	mulss	%xmm4, %xmm10	 # _116, _117
	mulss	%xmm4, %xmm6	 # _116, _118
	mulss	%xmm9, %xmm4	 # _134, _119
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:75: 				x.y * y.z - y.y * x.z,
	movaps	%xmm10, %xmm1	 # _117, tmp186
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:56: 		};
	movss	%xmm10, 80(%rsp)	 # _117, m[8]
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:75: 				x.y * y.z - y.y * x.z,
	mulss	%xmm8, %xmm1	 # _159, tmp186
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:75: 				x.y * y.z - y.y * x.z,
	movaps	%xmm6, %xmm0	 # _118, tmp185
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:56: 		};
	movss	%xmm6, 64(%rsp)	 # _118, m[4]
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:75: 				x.y * y.z - y.y * x.z,
	mulss	%xmm7, %xmm0	 # _158, tmp185
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:76: 				x.z * y.x - y.z * x.x,
	movaps	%xmm4, %xmm2	 # _119, tmp191
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:56: 		};
	movss	%xmm4, 48(%rsp)	 # _119, m[0]
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:76: 				x.z * y.x - y.z * x.x,
	mulss	%xmm7, %xmm2	 # _158, tmp191
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	mulss	%xmm3, %xmm6	 # _160, tmp196
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	mulss	%xmm8, %xmm4	 # _159, tmp195
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	subss	%xmm1, %xmm0	 # tmp186, tmp187
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:52: 			s.x,  u.x,  -f.x,  0.0f,
	movss	.LC13(%rip), %xmm1	 #, tmp189
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:54: 			s.z,  u.z,  -f.z,  0.0f,
	xorps	%xmm1, %xmm7	 # tmp189, tmp198
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:56: 		};
	movss	%xmm7, 88(%rsp)	 # tmp198, m[10]
	movss	%xmm0, 52(%rsp)	 # tmp187, m[1]
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:52: 			s.x,  u.x,  -f.x,  0.0f,
	movaps	%xmm3, %xmm0	 # _160, tmp188
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	subss	%xmm6, %xmm4	 # tmp196, tmp197
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:52: 			s.x,  u.x,  -f.x,  0.0f,
	xorps	%xmm1, %xmm0	 # tmp189, tmp188
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:56: 		};
	movss	%xmm0, 56(%rsp)	 # tmp188, m[2]
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:76: 				x.z * y.x - y.z * x.x,
	movaps	%xmm10, %xmm0	 # _117, tmp190
	mulss	%xmm3, %xmm0	 # _160, tmp190
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:56: 		};
	movss	%xmm4, 84(%rsp)	 # tmp197, m[9]
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	subss	%xmm2, %xmm0	 # tmp191, tmp192
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:56: 		};
	movss	%xmm0, 68(%rsp)	 # tmp192, m[5]
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:53: 			s.y,  u.y,  -f.y,  0.0f,
	movaps	%xmm8, %xmm0	 # _159, tmp193
	xorps	%xmm1, %xmm0	 # tmp189, tmp193
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:56: 		};
	movss	%xmm0, 72(%rsp)	 # tmp193, m[6]
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:58: 		glMultMatrixf(m);
	call	*__imp_glMultMatrixf(%rip)	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:59: 		glTranslated(-eyeX, -eyeY, -eyeZ);
	movapd	%xmm13, %xmm2	 # eyeZ, eyeZ
	movapd	%xmm12, %xmm1	 # eyeY, eyeY
	movq	.LC12(%rip), %xmm0	 #, tmp203
	xorpd	%xmm0, %xmm2	 # tmp203, eyeZ
	xorpd	%xmm0, %xmm1	 # tmp203, eyeY
	xorpd	%xmm11, %xmm0	 # eyeX, tmp206
	call	*__imp_glTranslated(%rip)	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:60: 	}
	movq	-8(%rbp), %rdi	 #,
	movaps	112(%rsp), %xmm6	 #,
	movaps	128(%rsp), %xmm7	 #,
	movaps	144(%rsp), %xmm8	 #,
	movaps	160(%rsp), %xmm9	 #,
	movaps	176(%rsp), %xmm10	 #,
	movaps	192(%rsp), %xmm11	 #,
	movaps	208(%rsp), %xmm12	 #,
	movaps	224(%rsp), %xmm13	 #,
	movaps	240(%rsp), %xmm14	 #,
	movaps	256(%rsp), %xmm15	 #,
	leave	
	ret	
.L62:
	movss	%xmm3, 44(%rsp)	 # _51, %sfp
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/cmath:464:   { return __builtin_sqrtf(__x); }
	call	sqrtf	 #
	movss	44(%rsp), %xmm3	 # %sfp, _51
	jmp	.L52	 #
.L64:
	movss	%xmm3, 44(%rsp)	 # _160, %sfp
	call	sqrtf	 #
	movss	44(%rsp), %xmm3	 # %sfp, _160
	jmp	.L58	 #
.L63:
	movss	%xmm3, 44(%rsp)	 # _160, %sfp
	call	sqrtf	 #
	movss	44(%rsp), %xmm3	 # %sfp, _160
	jmp	.L55	 #
	.p2align 4
	.globl	_Z10drawSpherefii
	.def	_Z10drawSpherefii;	.scl	2;	.type	32;	.endef
_Z10drawSpherefii:
	pushq	%r15	 #
	pushq	%r14	 #
	pushq	%r13	 #
	pushq	%r12	 #
	pushq	%rbp	 #
	pushq	%rdi	 #
	pushq	%rsi	 #
	pushq	%rbx	 #
	subq	$232, %rsp	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:64: 	for (int i = 0; i <= stacks; ++i) {
	testl	%r8d, %r8d	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:63: void drawSphere(float radius, int slices, int stacks) {
	movaps	%xmm6, 64(%rsp)	 #,
	movaps	%xmm7, 80(%rsp)	 #,
	movaps	%xmm8, 96(%rsp)	 #,
	movaps	%xmm9, 112(%rsp)	 #,
	movaps	%xmm10, 128(%rsp)	 #,
	movaps	%xmm11, 144(%rsp)	 #,
	movaps	%xmm12, 160(%rsp)	 #,
	movaps	%xmm13, 176(%rsp)	 #,
	movaps	%xmm14, 192(%rsp)	 #,
	movaps	%xmm15, 208(%rsp)	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:63: void drawSphere(float radius, int slices, int stacks) {
	movl	%r8d, 320(%rsp)	 # tmp186, stacks
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:64: 	for (int i = 0; i <= stacks; ++i) {
	js	.L66	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:65: 		float V   = (float)i / stacks;
	pxor	%xmm5, %xmm5	 # _83
	cvtsi2ssl	%r8d, %xmm5	 #, _83
	movaps	%xmm0, %xmm7	 # tmp184, radius
	movq	__imp_glVertex3f(%rip), %rbx	 #, tmp183
	movsd	.LC11(%rip), %xmm10	 #, tmp177
	leaq	60(%rsp), %rbp	 #, tmp181
	movl	%edx, %esi	 # tmp185, slices
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:64: 	for (int i = 0; i <= stacks; ++i) {
	xorl	%r14d, %r14d	 # i
	movsd	.LC14(%rip), %xmm14	 #, tmp182
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:65: 		float V   = (float)i / stacks;
	movss	%xmm5, 36(%rsp)	 # _83, %sfp
	.p2align 4,,10
	.p2align 3
.L69:
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:65: 		float V   = (float)i / stacks;
	pxor	%xmm8, %xmm8	 # tmp130
	cvtsi2ssl	%r14d, %xmm8	 # i, tmp130
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:68: 		glBegin(GL_TRIANGLE_STRIP);
	movl	$5, %ecx	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:65: 		float V   = (float)i / stacks;
	divss	36(%rsp), %xmm8	 # %sfp, V
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:66: 		float phi = V * M_PI;
	cvtss2sd	%xmm8, %xmm8	 # V, tmp132
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:68: 		glBegin(GL_TRIANGLE_STRIP);
	call	*__imp_glBegin(%rip)	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:66: 		float phi = V * M_PI;
	mulsd	%xmm10, %xmm8	 # tmp177, tmp133
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:69: 		for (int j = 0; j <= slices; ++j) {
	testl	%esi, %esi	 # slices
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:66: 		float phi = V * M_PI;
	cvtsd2ss	%xmm8, %xmm8	 # tmp133, phi
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:69: 		for (int j = 0; j <= slices; ++j) {
	js	.L72	 #,
	leaq	56(%rsp), %rdi	 #, tmp172
	movq	%rbp, %rdx	 # tmp181,
	movaps	%xmm8, %xmm0	 # phi,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:70: 			float U = (float)j / slices;
	pxor	%xmm12, %xmm12	 # _84
	pxor	%xmm11, %xmm11	 # tmp174
	leaq	48(%rsp), %r13	 #, tmp170
	movq	%rdi, %r8	 # tmp172,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:69: 		for (int j = 0; j <= slices; ++j) {
	xorl	%r15d, %r15d	 # j
	call	sincosf	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:70: 			float U = (float)j / slices;
	cvtsi2ssl	%esi, %xmm12	 # slices, _84
	leaq	40(%rsp), %r12	 #, tmp178
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:76: 			glVertex3f(x * radius, y * radius, z * radius);
	movss	56(%rsp), %xmm13	 #, _10
	cvtsi2sdl	320(%rsp), %xmm11	 # stacks, tmp174
	movss	60(%rsp), %xmm9	 #, _40
	cvtss2sd	%xmm8, %xmm8	 # phi, tmp179
	mulss	%xmm7, %xmm13	 # radius, _10
	.p2align 4,,10
	.p2align 3
.L71:
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:70: 			float U = (float)j / slices;
	pxor	%xmm0, %xmm0	 # tmp141
	cvtsi2ssl	%r15d, %xmm0	 # j, tmp141
	movq	%rdi, %r8	 # tmp172,
	movq	%rbp, %rdx	 # tmp181,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:69: 		for (int j = 0; j <= slices; ++j) {
	addl	$1, %r15d	 #, j
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:70: 			float U = (float)j / slices;
	divss	%xmm12, %xmm0	 # _84, U
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:71: 			float theta = U * (M_PI * 2);
	cvtss2sd	%xmm0, %xmm0	 # U, tmp143
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:71: 			float theta = U * (M_PI * 2);
	mulsd	%xmm14, %xmm0	 # tmp182, tmp144
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:71: 			float theta = U * (M_PI * 2);
	cvtsd2ss	%xmm0, %xmm0	 # tmp144, theta
	call	sincosf	 #
	movss	56(%rsp), %xmm6	 #, sincostmp_28
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:75: 			float z = sin(theta) * sin(phi);
	movaps	%xmm9, %xmm2	 # _40, z
	movss	60(%rsp), %xmm15	 #, sincostmp_28
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:76: 			glVertex3f(x * radius, y * radius, z * radius);
	movaps	%xmm13, %xmm1	 # _10,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:73: 			float x = cos(theta) * sin(phi);
	movaps	%xmm6, %xmm0	 # sincostmp_28, x
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:75: 			float z = sin(theta) * sin(phi);
	mulss	%xmm15, %xmm2	 # sincostmp_28, z
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:73: 			float x = cos(theta) * sin(phi);
	mulss	%xmm9, %xmm0	 # _40, x
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:76: 			glVertex3f(x * radius, y * radius, z * radius);
	mulss	%xmm7, %xmm2	 # radius,
	mulss	%xmm7, %xmm0	 # radius, tmp150
	call	*%rbx	 # tmp183
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:78: 			float x2 = cos(theta) * sin(phi + M_PI / stacks);
	movapd	%xmm10, %xmm0	 # tmp177, tmp155
	movq	%r12, %r8	 # tmp178,
	movq	%r13, %rdx	 # tmp170,
	divsd	%xmm11, %xmm0	 # tmp174, tmp155
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:78: 			float x2 = cos(theta) * sin(phi + M_PI / stacks);
	addsd	%xmm8, %xmm0	 # tmp179, tmp158
	call	sincos	 #
	movsd	48(%rsp), %xmm0	 #, sincostmp_27
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:80: 			float z2 = sin(theta) * sin(phi + M_PI / stacks);
	pxor	%xmm3, %xmm3	 # tmp159
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:78: 			float x2 = cos(theta) * sin(phi + M_PI / stacks);
	cvtss2sd	%xmm6, %xmm6	 # sincostmp_28, tmp165
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:80: 			float z2 = sin(theta) * sin(phi + M_PI / stacks);
	cvtss2sd	%xmm15, %xmm3	 # sincostmp_28, tmp159
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:80: 			float z2 = sin(theta) * sin(phi + M_PI / stacks);
	pxor	%xmm2, %xmm2	 # z2
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:79: 			float y2 = cos(phi + M_PI / stacks);
	pxor	%xmm1, %xmm1	 # y2
	cvtsd2ss	40(%rsp), %xmm1	 #, y2
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:80: 			float z2 = sin(theta) * sin(phi + M_PI / stacks);
	mulsd	%xmm0, %xmm3	 # sincostmp_27, tmp160
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:78: 			float x2 = cos(theta) * sin(phi + M_PI / stacks);
	mulsd	%xmm6, %xmm0	 # tmp165, tmp166
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:81: 			glVertex3f(x2 * radius, y2 * radius, z2 * radius);
	mulss	%xmm7, %xmm1	 # radius,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:80: 			float z2 = sin(theta) * sin(phi + M_PI / stacks);
	cvtsd2ss	%xmm3, %xmm2	 # tmp160, z2
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:81: 			glVertex3f(x2 * radius, y2 * radius, z2 * radius);
	mulss	%xmm7, %xmm2	 # radius,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:78: 			float x2 = cos(theta) * sin(phi + M_PI / stacks);
	cvtsd2ss	%xmm0, %xmm0	 # tmp166, x2
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:81: 			glVertex3f(x2 * radius, y2 * radius, z2 * radius);
	mulss	%xmm7, %xmm0	 # radius, tmp168
	call	*%rbx	 # tmp183
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:69: 		for (int j = 0; j <= slices; ++j) {
	cmpl	%r15d, %esi	 # j, slices
	jge	.L71	 #,
.L72:
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:83: 		glEnd();
	call	*__imp_glEnd(%rip)	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:64: 	for (int i = 0; i <= stacks; ++i) {
	addl	$1, %r14d	 #, i
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:64: 	for (int i = 0; i <= stacks; ++i) {
	cmpl	%r14d, 320(%rsp)	 # i, stacks
	jge	.L69	 #,
.L66:
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:85: }
	movaps	64(%rsp), %xmm6	 #,
	movaps	80(%rsp), %xmm7	 #,
	movaps	96(%rsp), %xmm8	 #,
	movaps	112(%rsp), %xmm9	 #,
	movaps	128(%rsp), %xmm10	 #,
	movaps	144(%rsp), %xmm11	 #,
	movaps	160(%rsp), %xmm12	 #,
	movaps	176(%rsp), %xmm13	 #,
	movaps	192(%rsp), %xmm14	 #,
	movaps	208(%rsp), %xmm15	 #,
	addq	$232, %rsp	 #,
	popq	%rbx	 #
	popq	%rsi	 #
	popq	%rdi	 #
	popq	%rbp	 #
	popq	%r12	 #
	popq	%r13	 #
	popq	%r14	 #
	popq	%r15	 #
	ret	
	.p2align 4
	.globl	_Z12processInputP10GLFWwindow
	.def	_Z12processInputP10GLFWwindow;	.scl	2;	.type	32;	.endef
_Z12processInputP10GLFWwindow:
	pushq	%r12	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:107: 	if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS)
	movl	$87, %edx	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:106: void processInput(GLFWwindow* window) {
	movq	%rcx, %r12	 # tmp292, window
	subq	$96, %rsp	 #,
	movaps	%xmm6, 32(%rsp)	 #,
	movaps	%xmm7, 48(%rsp)	 #,
	movaps	%xmm8, 64(%rsp)	 #,
	movaps	%xmm9, 80(%rsp)	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:107: 	if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS)
	call	glfwGetKey	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:107: 	if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS)
	cmpl	$1, %eax	 #, tmp293
	jne	.L77	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:108: 		cameraPos += cameraSpeed * cameraFront;
	movss	cameraSpeed(%rip), %xmm0	 # cameraSpeed, cameraSpeed.12_1
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:693: 			scalar * v.z);
	movss	8+cameraFront(%rip), %xmm1	 # cameraFront.D.83958.z, _39
	movss	4+cameraFront(%rip), %xmm2	 # cameraFront.D.83952.y, _41
	mulss	%xmm0, %xmm1	 # cameraSpeed.12_1, _39
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:248: 		this->z += static_cast<T>(v.z);
	addss	8+cameraPos(%rip), %xmm1	 # cameraPos.D.83958.z, tmp199
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:693: 			scalar * v.z);
	mulss	%xmm0, %xmm2	 # cameraSpeed.12_1, _41
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:247: 		this->y += static_cast<T>(v.y);
	addss	4+cameraPos(%rip), %xmm2	 # cameraPos.D.83952.y, tmp195
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:693: 			scalar * v.z);
	mulss	cameraFront(%rip), %xmm0	 # cameraFront.D.83946.x, tmp190
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:246: 		this->x += static_cast<T>(v.x);
	addss	cameraPos(%rip), %xmm0	 # cameraPos.D.83946.x, tmp192
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:248: 		this->z += static_cast<T>(v.z);
	movss	%xmm1, 8+cameraPos(%rip)	 # tmp199, cameraPos.D.83958.z
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:247: 		this->y += static_cast<T>(v.y);
	movss	%xmm2, 4+cameraPos(%rip)	 # tmp195, cameraPos.D.83952.y
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:246: 		this->x += static_cast<T>(v.x);
	movss	%xmm0, cameraPos(%rip)	 # tmp192, cameraPos.D.83946.x
.L77:
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:109: 	if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS)
	movl	$83, %edx	 #,
	movq	%r12, %rcx	 # window,
	call	glfwGetKey	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:109: 	if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS)
	cmpl	$1, %eax	 #, tmp294
	jne	.L78	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:110: 		cameraPos -= cameraSpeed * cameraFront;
	movss	cameraSpeed(%rip), %xmm0	 # cameraSpeed, cameraSpeed.14_2
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:693: 			scalar * v.z);
	movss	8+cameraFront(%rip), %xmm2	 # cameraFront.D.83958.z, _51
	movss	4+cameraFront(%rip), %xmm3	 # cameraFront.D.83952.y, _53
	mulss	%xmm0, %xmm2	 # cameraSpeed.14_2, _51
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:276: 		this->x -= static_cast<T>(v.x);
	movss	cameraPos(%rip), %xmm1	 # cameraPos.D.83946.x, cameraPos.D.83946.x
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:693: 			scalar * v.z);
	mulss	%xmm0, %xmm3	 # cameraSpeed.14_2, _53
	mulss	cameraFront(%rip), %xmm0	 # cameraFront.D.83946.x, tmp206
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:276: 		this->x -= static_cast<T>(v.x);
	subss	%xmm0, %xmm1	 # tmp206, tmp207
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:277: 		this->y -= static_cast<T>(v.y);
	movss	4+cameraPos(%rip), %xmm0	 # cameraPos.D.83952.y, cameraPos.D.83952.y
	subss	%xmm3, %xmm0	 # _53, tmp211
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:276: 		this->x -= static_cast<T>(v.x);
	movss	%xmm1, cameraPos(%rip)	 # tmp207, cameraPos.D.83946.x
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:277: 		this->y -= static_cast<T>(v.y);
	movss	%xmm0, 4+cameraPos(%rip)	 # tmp211, cameraPos.D.83952.y
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:278: 		this->z -= static_cast<T>(v.z);
	movss	8+cameraPos(%rip), %xmm0	 # cameraPos.D.83958.z, cameraPos.D.83958.z
	subss	%xmm2, %xmm0	 # _51, tmp215
	movss	%xmm0, 8+cameraPos(%rip)	 # tmp215, cameraPos.D.83958.z
.L78:
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:111: 	if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS)
	movl	$65, %edx	 #,
	movq	%r12, %rcx	 # window,
	call	glfwGetKey	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:111: 	if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS)
	cmpl	$1, %eax	 #, tmp295
	je	.L96	 #,
.L79:
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:113: 	if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS)
	movl	$68, %edx	 #,
	movq	%r12, %rcx	 # window,
	call	glfwGetKey	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:113: 	if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS)
	cmpl	$1, %eax	 #, tmp297
	je	.L97	 #,
.L83:
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:116: 	if (glfwGetKey(window, GLFW_KEY_LEFT_SHIFT) == GLFW_PRESS)
	movl	$340, %edx	 #,
	movq	%r12, %rcx	 # window,
	call	glfwGetKey	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:117: 		cameraSpeed = 0.1f; // rychlejší pohyb
	movss	.LC4(%rip), %xmm0	 #, cstore_186
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:116: 	if (glfwGetKey(window, GLFW_KEY_LEFT_SHIFT) == GLFW_PRESS)
	cmpl	$1, %eax	 #, tmp299
	je	.L87	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:119: 		cameraSpeed = 0.05f; // zpět na normál
	movss	.LC15(%rip), %xmm0	 #, cstore_186
.L87:
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:121: 	if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
	movl	$256, %edx	 #,
	movq	%r12, %rcx	 # window,
	movss	%xmm0, cameraSpeed(%rip)	 # cstore_186, cameraSpeed
	call	glfwGetKey	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:121: 	if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
	cmpl	$1, %eax	 #, tmp300
	je	.L98	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:123: }
	movaps	32(%rsp), %xmm6	 #,
	movaps	48(%rsp), %xmm7	 #,
	movaps	64(%rsp), %xmm8	 #,
	movaps	80(%rsp), %xmm9	 #,
	addq	$96, %rsp	 #,
	popq	%r12	 #
	ret	
	.p2align 4,,10
	.p2align 3
.L96:
	movss	4+cameraFront(%rip), %xmm7	 # MEM[(union ._anon_60 *)&cameraFront + 4B], _109
	movss	cameraFront(%rip), %xmm1	 # MEM[(union ._anon_59 *)&cameraFront], _108
	movss	8+cameraFront(%rip), %xmm0	 # MEM[(union ._anon_61 *)&cameraFront + 8B], _110
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	movaps	%xmm7, %xmm4	 # _109, tmp224
	movss	cameraUp(%rip), %xmm6	 # MEM[(union ._anon_59 *)&cameraUp], _111
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	movaps	%xmm1, %xmm9	 # _108, tmp223
	movss	4+cameraUp(%rip), %xmm2	 # MEM[(union ._anon_60 *)&cameraUp + 4B], _112
	movss	8+cameraUp(%rip), %xmm3	 # MEM[(union ._anon_61 *)&cameraUp + 8B], _113
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	mulss	%xmm6, %xmm4	 # _111, tmp224
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:112: 		cameraPos -= glm::normalize(glm::cross(cameraFront, cameraUp)) * cameraSpeed;
	movss	cameraSpeed(%rip), %xmm8	 # cameraSpeed, cameraSpeed.16_3
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:76: 				x.z * y.x - y.z * x.x,
	mulss	%xmm0, %xmm6	 # _110, tmp225
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:76: 				x.z * y.x - y.z * x.x,
	mulss	%xmm3, %xmm1	 # _113, tmp226
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:75: 				x.y * y.z - y.y * x.z,
	mulss	%xmm2, %xmm0	 # _112, tmp228
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:75: 				x.y * y.z - y.y * x.z,
	mulss	%xmm3, %xmm7	 # _113, tmp227
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	mulss	%xmm2, %xmm9	 # _112, tmp223
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	subss	%xmm1, %xmm6	 # tmp226, _138
	subss	%xmm0, %xmm7	 # tmp228, _141
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:711: 			v1.z * v2.z);
	movaps	%xmm6, %xmm0	 # _138, tmp229
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	subss	%xmm4, %xmm9	 # tmp224, _133
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:711: 			v1.z * v2.z);
	mulss	%xmm6, %xmm0	 # _138, tmp229
	movaps	%xmm7, %xmm1	 # _141, tmp230
	mulss	%xmm7, %xmm1	 # _141, tmp230
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:53: 			return tmp.x + tmp.y + tmp.z;
	addss	%xmm1, %xmm0	 # tmp230, tmp231
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:711: 			v1.z * v2.z);
	movaps	%xmm9, %xmm1	 # _133, tmp232
	mulss	%xmm9, %xmm1	 # _133, tmp232
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:53: 			return tmp.x + tmp.y + tmp.z;
	addss	%xmm1, %xmm0	 # tmp232, _121
	pxor	%xmm1, %xmm1	 # tmp233
	ucomiss	%xmm0, %xmm1	 # _121, tmp233
	ja	.L93	 #,
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/cmath:464:   { return __builtin_sqrtf(__x); }
	sqrtss	%xmm0, %xmm0	 # _121, _122
.L82:
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_exponential.inl:138: 		return static_cast<genType>(1) / sqrt(x);
	movss	.LC9(%rip), %xmm1	 #, tmp234
	divss	%xmm0, %xmm1	 # _122, _123
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:276: 		this->x -= static_cast<T>(v.x);
	movss	cameraPos(%rip), %xmm0	 # cameraPos.D.83946.x, cameraPos.D.83946.x
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:675: 			v.z * scalar);
	mulss	%xmm1, %xmm7	 # _123, tmp237
	mulss	%xmm1, %xmm6	 # _123, tmp243
	mulss	%xmm9, %xmm1	 # _133, tmp249
	mulss	%xmm8, %xmm7	 # cameraSpeed.16_3, tmp238
	mulss	%xmm8, %xmm6	 # cameraSpeed.16_3, tmp244
	mulss	%xmm8, %xmm1	 # cameraSpeed.16_3, tmp250
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:276: 		this->x -= static_cast<T>(v.x);
	subss	%xmm7, %xmm0	 # tmp238, tmp239
	movss	%xmm0, cameraPos(%rip)	 # tmp239, cameraPos.D.83946.x
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:277: 		this->y -= static_cast<T>(v.y);
	movss	4+cameraPos(%rip), %xmm0	 # cameraPos.D.83952.y, cameraPos.D.83952.y
	subss	%xmm6, %xmm0	 # tmp244, tmp245
	movss	%xmm0, 4+cameraPos(%rip)	 # tmp245, cameraPos.D.83952.y
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:278: 		this->z -= static_cast<T>(v.z);
	movss	8+cameraPos(%rip), %xmm0	 # cameraPos.D.83958.z, cameraPos.D.83958.z
	subss	%xmm1, %xmm0	 # tmp250, tmp251
	movss	%xmm0, 8+cameraPos(%rip)	 # tmp251, cameraPos.D.83958.z
	jmp	.L79	 #
	.p2align 4,,10
	.p2align 3
.L98:
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:123: }
	movaps	32(%rsp), %xmm6	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:122: 		glfwSetWindowShouldClose(window, GLFW_TRUE);
	movq	%r12, %rcx	 # window,
	movl	$1, %edx	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:123: }
	movaps	48(%rsp), %xmm7	 #,
	movaps	64(%rsp), %xmm8	 #,
	movaps	80(%rsp), %xmm9	 #,
	addq	$96, %rsp	 #,
	popq	%r12	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:122: 		glfwSetWindowShouldClose(window, GLFW_TRUE);
	jmp	glfwSetWindowShouldClose	 #
	.p2align 4,,10
	.p2align 3
.L97:
	movss	4+cameraFront(%rip), %xmm7	 # MEM[(union ._anon_60 *)&cameraFront + 4B], _100
	movss	cameraFront(%rip), %xmm1	 # MEM[(union ._anon_59 *)&cameraFront], _99
	movss	8+cameraFront(%rip), %xmm0	 # MEM[(union ._anon_61 *)&cameraFront + 8B], _101
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	movaps	%xmm7, %xmm4	 # _100, tmp260
	movss	cameraUp(%rip), %xmm6	 # MEM[(union ._anon_59 *)&cameraUp], _102
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	movaps	%xmm1, %xmm9	 # _99, tmp259
	movss	4+cameraUp(%rip), %xmm2	 # MEM[(union ._anon_60 *)&cameraUp + 4B], _103
	movss	8+cameraUp(%rip), %xmm3	 # MEM[(union ._anon_61 *)&cameraUp + 8B], _104
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	mulss	%xmm6, %xmm4	 # _102, tmp260
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:114: 		cameraPos += glm::normalize(glm::cross(cameraFront, cameraUp)) * cameraSpeed;
	movss	cameraSpeed(%rip), %xmm8	 # cameraSpeed, cameraSpeed.18_4
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:76: 				x.z * y.x - y.z * x.x,
	mulss	%xmm0, %xmm6	 # _101, tmp261
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:76: 				x.z * y.x - y.z * x.x,
	mulss	%xmm3, %xmm1	 # _104, tmp262
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:75: 				x.y * y.z - y.y * x.z,
	mulss	%xmm2, %xmm0	 # _103, tmp264
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:75: 				x.y * y.z - y.y * x.z,
	mulss	%xmm3, %xmm7	 # _104, tmp263
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	mulss	%xmm2, %xmm9	 # _103, tmp259
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	subss	%xmm1, %xmm6	 # tmp262, _166
	subss	%xmm0, %xmm7	 # tmp264, _169
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:711: 			v1.z * v2.z);
	movaps	%xmm6, %xmm0	 # _166, tmp265
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:77: 				x.x * y.y - y.x * x.y);
	subss	%xmm4, %xmm9	 # tmp260, _161
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:711: 			v1.z * v2.z);
	mulss	%xmm6, %xmm0	 # _166, tmp265
	movaps	%xmm7, %xmm1	 # _169, tmp266
	mulss	%xmm7, %xmm1	 # _169, tmp266
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:53: 			return tmp.x + tmp.y + tmp.z;
	addss	%xmm1, %xmm0	 # tmp266, tmp267
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:711: 			v1.z * v2.z);
	movaps	%xmm9, %xmm1	 # _161, tmp268
	mulss	%xmm9, %xmm1	 # _161, tmp268
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_geometric.inl:53: 			return tmp.x + tmp.y + tmp.z;
	addss	%xmm1, %xmm0	 # tmp268, _149
	pxor	%xmm1, %xmm1	 # tmp269
	ucomiss	%xmm0, %xmm1	 # _149, tmp269
	ja	.L94	 #,
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/cmath:464:   { return __builtin_sqrtf(__x); }
	sqrtss	%xmm0, %xmm0	 # _149, _150
.L86:
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_exponential.inl:138: 		return static_cast<genType>(1) / sqrt(x);
	movss	.LC9(%rip), %xmm2	 #, tmp270
	divss	%xmm0, %xmm2	 # _150, tmp270
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:675: 			v.z * scalar);
	mulss	%xmm2, %xmm7	 # _151, tmp272
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/func_exponential.inl:138: 		return static_cast<genType>(1) / sqrt(x);
	movaps	%xmm2, %xmm1	 # tmp270, _151
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:675: 			v.z * scalar);
	mulss	%xmm2, %xmm6	 # _151, tmp277
	mulss	%xmm9, %xmm1	 # _161, tmp282
	mulss	%xmm8, %xmm7	 # cameraSpeed.18_4, tmp273
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:246: 		this->x += static_cast<T>(v.x);
	addss	cameraPos(%rip), %xmm7	 # cameraPos.D.83946.x, tmp275
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:675: 			v.z * scalar);
	mulss	%xmm8, %xmm6	 # cameraSpeed.18_4, tmp278
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:247: 		this->y += static_cast<T>(v.y);
	addss	4+cameraPos(%rip), %xmm6	 # cameraPos.D.83952.y, tmp280
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:675: 			v.z * scalar);
	mulss	%xmm8, %xmm1	 # cameraSpeed.18_4, tmp283
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:248: 		this->z += static_cast<T>(v.z);
	addss	8+cameraPos(%rip), %xmm1	 # cameraPos.D.83958.z, tmp285
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:246: 		this->x += static_cast<T>(v.x);
	movss	%xmm7, cameraPos(%rip)	 # tmp275, cameraPos.D.83946.x
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:247: 		this->y += static_cast<T>(v.y);
	movss	%xmm6, 4+cameraPos(%rip)	 # tmp280, cameraPos.D.83952.y
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:248: 		this->z += static_cast<T>(v.z);
	movss	%xmm1, 8+cameraPos(%rip)	 # tmp285, cameraPos.D.83958.z
	jmp	.L83	 #
.L93:
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/cmath:464:   { return __builtin_sqrtf(__x); }
	call	sqrtf	 #
	jmp	.L82	 #
.L94:
	call	sqrtf	 #
	jmp	.L86	 #
	.p2align 4
	.globl	_Z19getParticlePositionffff
	.def	_Z19getParticlePositionffff;	.scl	2;	.type	32;	.endef
_Z19getParticlePositionffff:
	pushq	%r12	 #
	movq	%rcx, %r12	 # tmp118, .result_ptr
	addq	$-128, %rsp	 #,
	movaps	%xmm6, 32(%rsp)	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:158: 	float offsetX = 0.15f * sin(time * speed * 0.00001f + baseX);
	movss	.LC16(%rip), %xmm6	 #, tmp102
	mulss	176(%rsp), %xmm6	 # time, _1
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:157: glm::vec3 getParticlePosition(float baseX, float baseY, float baseZ, float time) {
	movaps	%xmm7, 48(%rsp)	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:158: 	float offsetX = 0.15f * sin(time * speed * 0.00001f + baseX);
	movss	.LC17(%rip), %xmm7	 #, _2
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:157: glm::vec3 getParticlePosition(float baseX, float baseY, float baseZ, float time) {
	movaps	%xmm9, 80(%rsp)	 #,
	movaps	%xmm2, %xmm9	 # tmp120, baseY
	movaps	%xmm8, 64(%rsp)	 #,
	movaps	%xmm3, %xmm8	 # tmp121, baseZ
	movaps	%xmm10, 96(%rsp)	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:158: 	float offsetX = 0.15f * sin(time * speed * 0.00001f + baseX);
	mulss	%xmm6, %xmm7	 # _1, _2
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:157: glm::vec3 getParticlePosition(float baseX, float baseY, float baseZ, float time) {
	movaps	%xmm11, 112(%rsp)	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:157: glm::vec3 getParticlePosition(float baseX, float baseY, float baseZ, float time) {
	movaps	%xmm1, %xmm11	 # tmp119, baseX
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:158: 	float offsetX = 0.15f * sin(time * speed * 0.00001f + baseX);
	movaps	%xmm7, %xmm0	 # _2, tmp104
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:159: 	float offsetY = 0.15f * cos(time * speed * 0.00001f + baseY);
	addss	%xmm9, %xmm7	 # baseY, _2
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:158: 	float offsetX = 0.15f * sin(time * speed * 0.00001f + baseX);
	addss	%xmm1, %xmm0	 # baseX, tmp104
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/cmath:426:   { return __builtin_sinf(__x); }
	call	sinf	 #
	movaps	%xmm0, %xmm10	 # tmp122, _13
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:159: 	float offsetY = 0.15f * cos(time * speed * 0.00001f + baseY);
	movaps	%xmm7, %xmm0	 # _2, tmp105
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/cmath:185:   { return __builtin_cosf(__x); }
	call	cosf	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:160: 	float offsetZ = 0.15f * sin(time * speed * 0.000012f + baseZ);
	mulss	.LC18(%rip), %xmm6	 #, tmp106
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/cmath:185:   { return __builtin_cosf(__x); }
	movaps	%xmm0, %xmm7	 # tmp123, _16
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:160: 	float offsetZ = 0.15f * sin(time * speed * 0.000012f + baseZ);
	addss	%xmm8, %xmm6	 # baseZ, tmp106
	movaps	%xmm6, %xmm0	 # tmp106, tmp108
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/cmath:426:   { return __builtin_sinf(__x); }
	call	sinf	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:158: 	float offsetX = 0.15f * sin(time * speed * 0.00001f + baseX);
	movss	.LC19(%rip), %xmm1	 #, tmp110
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:162: }
	movq	%r12, %rax	 # .result_ptr,
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/cmath:426:   { return __builtin_sinf(__x); }
	movaps	%xmm0, %xmm2	 #, tmp124
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:158: 	float offsetX = 0.15f * sin(time * speed * 0.00001f + baseX);
	movaps	%xmm10, %xmm0	 # _13, _13
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:162: }
	movaps	32(%rsp), %xmm6	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:158: 	float offsetX = 0.15f * sin(time * speed * 0.00001f + baseX);
	mulss	%xmm1, %xmm0	 # tmp110, _13
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:162: }
	movaps	96(%rsp), %xmm10	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:159: 	float offsetY = 0.15f * cos(time * speed * 0.00001f + baseY);
	mulss	%xmm1, %xmm7	 # tmp110, _16
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:160: 	float offsetZ = 0.15f * sin(time * speed * 0.000012f + baseZ);
	mulss	%xmm1, %xmm2	 # tmp110, tmp124
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:161: 	return glm::vec3(baseX + offsetX, baseY + offsetY, baseZ + offsetZ);
	addss	%xmm11, %xmm0	 # baseX, tmp111
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:162: }
	movaps	112(%rsp), %xmm11	 #,
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:38: 		: x(_x), y(_y), z(_z)
	movss	%xmm0, (%r12)	 # tmp111, MEM[(struct vec *)&<retval>].D.83946.x
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:159: 	float offsetY = 0.15f * cos(time * speed * 0.00001f + baseY);
	movaps	%xmm7, %xmm0	 # _16, offsetY
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:162: }
	movaps	48(%rsp), %xmm7	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:161: 	return glm::vec3(baseX + offsetX, baseY + offsetY, baseZ + offsetZ);
	addss	%xmm9, %xmm0	 # baseY, tmp114
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:162: }
	movaps	80(%rsp), %xmm9	 #,
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:38: 		: x(_x), y(_y), z(_z)
	movss	%xmm0, 4(%r12)	 # tmp114, MEM[(struct vec *)&<retval>].D.83952.y
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:160: 	float offsetZ = 0.15f * sin(time * speed * 0.000012f + baseZ);
	movaps	%xmm2, %xmm0	 # tmp124, offsetZ
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:161: 	return glm::vec3(baseX + offsetX, baseY + offsetY, baseZ + offsetZ);
	addss	%xmm8, %xmm0	 # baseZ, tmp117
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:162: }
	movaps	64(%rsp), %xmm8	 #,
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:38: 		: x(_x), y(_y), z(_z)
	movss	%xmm0, 8(%r12)	 # tmp117, MEM[(struct vec *)&<retval>].D.83958.z
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:162: }
	subq	$-128, %rsp	 #,
	popq	%r12	 #
	ret	
	.section .rdata,"dr"
.LC20:
	.ascii "vector::_M_realloc_insert\0"
	.section	.text$_ZNSt6vectorIN3glm3vecILi3EfLNS0_9qualifierE0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_,"x"
	.linkonce discard
	.align 2
	.p2align 4
	.globl	_ZNSt6vectorIN3glm3vecILi3EfLNS0_9qualifierE0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_
	.def	_ZNSt6vectorIN3glm3vecILi3EfLNS0_9qualifierE0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_;	.scl	2;	.type	32;	.endef
_ZNSt6vectorIN3glm3vecILi3EfLNS0_9qualifierE0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_:
	pushq	%r15	 #
	pushq	%r14	 #
	pushq	%r13	 #
	pushq	%r12	 #
	movq	%rdx, %r12	 # tmp144, __position
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_vector.h:919:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	movabsq	$-6148914691236517205, %rdx	 #, tmp122
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/vector.tcc:426:       vector<_Tp, _Alloc>::
	pushq	%rbp	 #
	pushq	%rdi	 #
	pushq	%rsi	 #
	pushq	%rbx	 #
	subq	$56, %rsp	 #,
	movq	8(%rcx), %rdi	 # MEM[(struct vec * *)this_16(D) + 8B], _46
	movq	(%rcx), %r13	 # MEM[(struct vec * *)this_16(D)], _45
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_vector.h:919:       { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
	movq	%rdi, %rax	 # _46, tmp119
	subq	%r13, %rax	 # _45, tmp119
	sarq	$2, %rax	 #, tmp120
	imulq	%rdx, %rax	 # tmp122, tmp121
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_vector.h:1758: 	if (max_size() - size() < __n)
	movabsq	$768614336404564650, %rdx	 #, tmp123
	cmpq	%rdx, %rax	 # tmp123, tmp121
	je	.L121	 #,
	testq	%rax, %rax	 # tmp121
	movl	$1, %edx	 #, tmp148
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_iterator.h:1271:     { return __lhs.base() - __rhs.base(); }
	movq	%r12, %rbp	 # __position, _89
	cmovne	%rax, %rdx	 # tmp121,, tmp125
	movq	%rcx, %rbx	 # tmp143, this
	movq	%r8, %r14	 # tmp145, __args#0
	addq	%rdx, %rax	 # tmp125, tmp126
	setc	%dl	 #, _81
	subq	%r13, %rbp	 # _45, _89
	movzbl	%dl, %edx	 # _81, _81
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_vector.h:1762: 	return (__len < size() || __len > max_size()) ? max_size() : __len;
	testq	%rdx, %rdx	 # _81
	jne	.L114	 #,
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_vector.h:346: 	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
	testq	%rax, %rax	 # tmp126
	jne	.L106	 #,
	xorl	%r15d, %r15d	 # prephitmp_79
	xorl	%esi, %esi	 # iftmp.38_34
.L112:
	movq	(%r14), %rax	 # MEM[(const struct vec *)__args#0_22(D)], MEM[(const struct vec *)__args#0_22(D)]
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/vector.tcc:464: 	      ++__new_finish;
	leaq	12(%rsi,%rbp), %r9	 #, _59
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_uninitialized.h:1009:       ptrdiff_t __count = __last - __first;
	subq	%r12, %rdi	 # __position, _60
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_uninitialized.h:1010:       if (__count > 0)
	testq	%rbp, %rbp	 # _89
	movq	%rax, (%rsi,%rbp)	 # MEM[(const struct vec *)__args#0_22(D)], *_2
	movl	8(%r14), %eax	 # MEM[(const struct vec *)__args#0_22(D)], MEM[(const struct vec *)__args#0_22(D)]
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_uninitialized.h:1012:       return __result + __count;
	leaq	(%r9,%rdi), %r14	 #, _88
	movl	%eax, 8(%rsi,%rbp)	 # MEM[(const struct vec *)__args#0_22(D)], *_2
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_uninitialized.h:1010:       if (__count > 0)
	jg	.L122	 #,
	testq	%rdi, %rdi	 # _60
	jg	.L110	 #,
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_vector.h:353: 	if (__p)
	testq	%r13, %r13	 # _45
	jne	.L120	 #,
.L111:
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/vector.tcc:502:       this->_M_impl._M_start = __new_start;
	movq	%rsi, (%rbx)	 # iftmp.38_34, this_16(D)->D.86048._M_impl.D.85361._M_start
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/vector.tcc:503:       this->_M_impl._M_finish = __new_finish;
	movq	%r14, 8(%rbx)	 # _88, this_16(D)->D.86048._M_impl.D.85361._M_finish
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/vector.tcc:504:       this->_M_impl._M_end_of_storage = __new_start + __len;
	movq	%r15, 16(%rbx)	 # prephitmp_79, this_16(D)->D.86048._M_impl.D.85361._M_end_of_storage
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/vector.tcc:505:     }
	addq	$56, %rsp	 #,
	popq	%rbx	 #
	popq	%rsi	 #
	popq	%rdi	 #
	popq	%rbp	 #
	popq	%r12	 #
	popq	%r13	 #
	popq	%r14	 #
	popq	%r15	 #
	ret	
	.p2align 4,,10
	.p2align 3
.L122:
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_uninitialized.h:1011: 	__builtin_memmove(__result, __first, __count * sizeof(_Tp));
	movq	%rbp, %r8	 # _89,
	movq	%r13, %rdx	 # _45,
	movq	%rsi, %rcx	 # iftmp.38_34,
	movq	%r9, 40(%rsp)	 # _59, %sfp
	call	memmove	 #
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_uninitialized.h:1010:       if (__count > 0)
	testq	%rdi, %rdi	 # _60
	movq	40(%rsp), %r9	 # %sfp, _59
	jg	.L110	 #,
.L120:
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/vector.tcc:501: 		    this->_M_impl._M_end_of_storage - __old_start);
	movq	16(%rbx), %rdx	 # this_16(D)->D.86048._M_impl.D.85361._M_end_of_storage, _12
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/ext/new_allocator.h:145: 	::operator delete(__p
	movq	%r13, %rcx	 # _45,
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/vector.tcc:501: 		    this->_M_impl._M_end_of_storage - __old_start);
	subq	%r13, %rdx	 # _45, _12
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/ext/new_allocator.h:145: 	::operator delete(__p
	call	_ZdlPvy	 #
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/alloc_traits.h:496:       { __a.deallocate(__p, __n); }
	jmp	.L111	 #
	.p2align 4,,10
	.p2align 3
.L110:
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_uninitialized.h:1011: 	__builtin_memmove(__result, __first, __count * sizeof(_Tp));
	movq	%rdi, %r8	 # _60,
	movq	%r12, %rdx	 # __position,
	movq	%r9, %rcx	 # _59,
	call	memcpy	 #
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_vector.h:353: 	if (__p)
	testq	%r13, %r13	 # _45
	je	.L111	 #,
	jmp	.L120	 #
	.p2align 4,,10
	.p2align 3
.L114:
	movabsq	$9223372036854775800, %r15	 #, prephitmp_54
.L105:
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/ext/new_allocator.h:127: 	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
	movq	%r15, %rcx	 # prephitmp_54,
	call	_Znwy	 #
	movq	%rax, %rsi	 # tmp146, iftmp.38_34
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/vector.tcc:504:       this->_M_impl._M_end_of_storage = __new_start + __len;
	addq	%rax, %r15	 # iftmp.38_34, prephitmp_79
	jmp	.L112	 #
	.p2align 4,,10
	.p2align 3
.L106:
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/ext/new_allocator.h:127: 	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
	movabsq	$768614336404564650, %rdx	 #, tmp147
	cmpq	%rdx, %rax	 # tmp147, tmp126
	cmova	%rdx, %rax	 # tmp126,, tmp147, tmp136
	leaq	(%rax,%rax,2), %r15	 #, tmp139
	salq	$2, %r15	 #, prephitmp_54
	jmp	.L105	 #
.L121:
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_vector.h:1759: 	  __throw_length_error(__N(__s));
	leaq	.LC20(%rip), %rcx	 #, tmp124
	call	_ZSt20__throw_length_errorPKc	 #
	.section .rdata,"dr"
.LC21:
	.ascii "Atom\0"
.LC22:
	.ascii "Failed to create a Window\0"
.LC36:
	.ascii "Celkov\303\241 s\303\255la: \0"
	.def	__gxx_personality_sj0;	.scl	2;	.type	32;	.endef
	.def	_Unwind_SjLj_Register;	.scl	2;	.type	32;	.endef
	.def	_Unwind_SjLj_Unregister;	.scl	2;	.type	32;	.endef
	.text
	.p2align 4
	.globl	_Z10renderAtomv
	.def	_Z10renderAtomv;	.scl	2;	.type	32;	.endef
_Z10renderAtomv:
	leaq	8(%rsp), %r10	 #,
	andq	$-16, %rsp	 #,
	pushq	-8(%r10)	 #
	pushq	%rbp	 #
	leaq	__gxx_personality_sj0(%rip), %rax	 #, tmp320
	movq	%rsp, %rbp	 #,
	pushq	%r10	 #
	subq	$312, %rsp	 #,
	movq	%rax, -128(%rbp)	 # tmp320,
	leaq	.LLSDA3960(%rip), %rax	 #, tmp321
	movq	%rbp, -112(%rbp)	 #,
	movq	%rax, -120(%rbp)	 # tmp321,
	leaq	.L145(%rip), %rax	 #, tmp322
	movq	%rax, -104(%rbp)	 # tmp322,
	leaq	-176(%rbp), %rax	 #, tmp302
	movq	%rax, %rcx	 # tmp302,
	movq	%rax, -240(%rbp)	 # tmp302, %sfp
	movq	%rsp, -96(%rbp)	 #,
	call	_Unwind_SjLj_Register	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:167: 	glfwInit();
	movl	$-1, -168(%rbp)	 #,
	call	glfwInit	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:168: 	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_ANY_PROFILE);
	xorl	%edx, %edx	 #
	movl	$139272, %ecx	 #,
	call	glfwWindowHint	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:170: 	GLFWwindow* window = glfwCreateWindow(800, 600, "Atom", NULL, NULL);
	xorl	%r9d, %r9d	 #
	movl	$600, %edx	 #,
	movq	$0, 32(%rsp)	 #,
	leaq	.LC21(%rip), %r8	 #,
	movl	$800, %ecx	 #,
	call	glfwCreateWindow	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:171: 	if (window == NULL) {
	testq	%rax, %rax	 # _32
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:170: 	GLFWwindow* window = glfwCreateWindow(800, 600, "Atom", NULL, NULL);
	movq	%rax, -200(%rbp)	 # _32, %sfp
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:171: 	if (window == NULL) {
	je	.L154	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:177: 	glfwMakeContextCurrent(window);
	movq	-200(%rbp), %rcx	 # %sfp,
	movl	$-1, -168(%rbp)	 #,
	call	glfwMakeContextCurrent	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:178: 	glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);
	movq	-200(%rbp), %rcx	 # %sfp,
	leaq	_Z25framebuffer_size_callbackP10GLFWwindowii(%rip), %rdx	 #, tmp180
	call	glfwSetFramebufferSizeCallback	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:179: 	glfwSetCursorPosCallback(window, mouse_callback);
	movq	-200(%rbp), %rcx	 # %sfp,
	leaq	_Z14mouse_callbackP10GLFWwindowdd(%rip), %rdx	 #, tmp181
	call	glfwSetCursorPosCallback	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:180: 	glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);
	movl	$212995, %r8d	 #,
	movl	$208897, %edx	 #,
	movq	-200(%rbp), %rcx	 # %sfp,
	call	glfwSetInputMode	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:181: 	glEnable(GL_DEPTH_TEST);
	movl	$2929, %ecx	 #,
	call	*__imp_glEnable(%rip)	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:183: 	glMatrixMode(GL_PROJECTION);
	movq	__imp_glMatrixMode(%rip), %rax	 #, tmp299
	movl	$5889, %ecx	 #,
	movq	%rax, -224(%rbp)	 # tmp299, %sfp
	call	*%rax	 # tmp299
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:184: 	glLoadIdentity();
	movq	__imp_glLoadIdentity(%rip), %rax	 #, tmp303
	movq	%rax, -232(%rbp)	 # tmp303, %sfp
	call	*%rax	 # tmp303
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:37: 	glFrustum(-fW, fW, -fH, fH, zNear, zFar);
	movq	.LC27(%rip), %rax	 #, tmp337
	movsd	.LC23(%rip), %xmm3	 #,
	movsd	.LC24(%rip), %xmm2	 #,
	movsd	.LC25(%rip), %xmm1	 #,
	movq	%rax, 40(%rsp)	 # tmp337,
	movq	.LC28(%rip), %rax	 #, tmp338
	movsd	.LC26(%rip), %xmm0	 #,
	movq	%rax, 32(%rsp)	 # tmp338,
	call	*__imp_glFrustum(%rip)	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:186: 	glfwSetKeyCallback(window, key_callback);
	movq	-200(%rbp), %rcx	 # %sfp,
	leaq	_Z12key_callbackP10GLFWwindowiiii(%rip), %rdx	 #, tmp192
	call	glfwSetKeyCallback	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:188: 	double lastTime = glfwGetTime();
	call	glfwGetTime	 #
	.p2align 4,,10
	.p2align 3
.L129:
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:190: 	while (!glfwWindowShouldClose(window)) {
	movq	-200(%rbp), %rcx	 # %sfp,
	movl	$-1, -168(%rbp)	 #,
	call	glfwWindowShouldClose	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:190: 	while (!glfwWindowShouldClose(window)) {
	testl	%eax, %eax	 # tmp318
	jne	.L155	 #,
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:191: 		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	movl	$-1, -168(%rbp)	 #,
	movl	$16640, %ecx	 #,
	call	*__imp_glClear(%rip)	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:192: 		float time = glfwGetTime();
	call	glfwGetTime	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:193: 		glMatrixMode(GL_MODELVIEW);
	movl	$5888, %ecx	 #,
	movq	-224(%rbp), %rax	 # %sfp, tmp299
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:192: 		float time = glfwGetTime();
	pxor	%xmm5, %xmm5	 # time
	cvtsd2ss	%xmm0, %xmm5	 # tmp313, time
	movss	%xmm5, -184(%rbp)	 # time, %sfp
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:193: 		glMatrixMode(GL_MODELVIEW);
	call	*%rax	 # tmp299
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:194: 		glLoadIdentity();
	movq	-232(%rbp), %rax	 # %sfp, tmp303
	call	*%rax	 # tmp303
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:621: 			v1.z + v2.z);
	movss	8+cameraPos(%rip), %xmm2	 # cameraPos.D.83958.z, _72
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:196: 		lookAtGL(cameraPos.x, cameraPos.y, cameraPos.z,
	pxor	%xmm4, %xmm4	 # tmp207
	cvtss2sd	8+cameraUp(%rip), %xmm4	 # cameraUp.D.83958.z, tmp207
	movsd	%xmm4, 64(%rsp)	 # tmp207,
	pxor	%xmm4, %xmm4	 # tmp210
	cvtss2sd	4+cameraUp(%rip), %xmm4	 # cameraUp.D.83952.y, tmp210
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:620: 			v1.y + v2.y,
	movss	4+cameraPos(%rip), %xmm1	 # cameraPos.D.83952.y, _79
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:196: 		lookAtGL(cameraPos.x, cameraPos.y, cameraPos.z,
	movsd	%xmm4, 56(%rsp)	 # tmp210,
	pxor	%xmm4, %xmm4	 # tmp213
	cvtss2sd	cameraUp(%rip), %xmm4	 # cameraUp.D.83946.x, tmp213
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:619: 			v1.x + v2.x,
	movss	cameraPos(%rip), %xmm0	 # cameraPos.D.83946.x, _93
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:196: 		lookAtGL(cameraPos.x, cameraPos.y, cameraPos.z,
	movsd	%xmm4, 48(%rsp)	 # tmp213,
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:621: 			v1.z + v2.z);
	movss	8+cameraFront(%rip), %xmm4	 # cameraFront.D.83958.z, tmp215
	movss	cameraFront(%rip), %xmm3	 # cameraFront.D.83946.x, tmp200
	addss	%xmm2, %xmm4	 # _72, tmp215
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:196: 		lookAtGL(cameraPos.x, cameraPos.y, cameraPos.z,
	cvtss2sd	%xmm2, %xmm2	 # _72,
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:621: 			v1.z + v2.z);
	addss	%xmm0, %xmm3	 # _93, tmp200
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:196: 		lookAtGL(cameraPos.x, cameraPos.y, cameraPos.z,
	cvtss2sd	%xmm0, %xmm0	 # _93, tmp204
	cvtss2sd	%xmm4, %xmm4	 # tmp215, tmp217
	movsd	%xmm4, 40(%rsp)	 # tmp217,
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:621: 			v1.z + v2.z);
	movss	4+cameraFront(%rip), %xmm4	 # cameraFront.D.83952.y, tmp219
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:196: 		lookAtGL(cameraPos.x, cameraPos.y, cameraPos.z,
	cvtss2sd	%xmm3, %xmm3	 # tmp200,
 # D:/Programy/RedPanda-Cpp/mingw64/x86_64-w64-mingw32/include/glm/detail/type_vec3.inl:621: 			v1.z + v2.z);
	addss	%xmm1, %xmm4	 # _79, tmp219
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:196: 		lookAtGL(cameraPos.x, cameraPos.y, cameraPos.z,
	cvtss2sd	%xmm1, %xmm1	 # _79,
	cvtss2sd	%xmm4, %xmm4	 # tmp219, tmp221
	movsd	%xmm4, 32(%rsp)	 # tmp221,
	call	_Z8lookAtGLddddddddd	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:201: 		positions.push_back(getParticlePosition(-0.75f, 0.0f, 0.0f, time));  
	leaq	-60(%rbp), %rax	 #, tmp300
	pxor	%xmm3, %xmm3	 #
	movaps	%xmm3, %xmm2	 #,
	movss	-184(%rbp), %xmm5	 # %sfp, time
	movq	%rax, %rcx	 # tmp300,
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_vector.h:98: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	$0, -48(%rbp)	 #, MEM[(struct _Vector_impl_data *)&positions]._M_start
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:201: 		positions.push_back(getParticlePosition(-0.75f, 0.0f, 0.0f, time));  
	movss	.LC29(%rip), %xmm1	 #,
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_vector.h:98: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	$0, -40(%rbp)	 #, MEM[(struct _Vector_impl_data *)&positions]._M_finish
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:201: 		positions.push_back(getParticlePosition(-0.75f, 0.0f, 0.0f, time));  
	movss	%xmm5, 32(%rsp)	 # time,
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_vector.h:98: 	: _M_start(), _M_finish(), _M_end_of_storage()
	movq	$0, -32(%rbp)	 #, MEM[(struct _Vector_impl_data *)&positions]._M_end_of_storage
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:201: 		positions.push_back(getParticlePosition(-0.75f, 0.0f, 0.0f, time));  
	movq	%rax, -72(%rbp)	 # tmp300, %sfp
	call	_Z19getParticlePositionffff	 #
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/vector.tcc:121: 	  _M_realloc_insert(end(), std::forward<_Args>(__args)...);
	movq	-72(%rbp), %r8	 # %sfp,
	leaq	-48(%rbp), %r10	 #, tmp301
	xorl	%edx, %edx	 #
	movq	%r10, %rcx	 # tmp301,
	movq	%r10, -208(%rbp)	 # tmp301, %sfp
	movl	$1, -168(%rbp)	 #,
	call	_ZNSt6vectorIN3glm3vecILi3EfLNS0_9qualifierE0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_	 #
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_iterator.h:1028:       : _M_current(__i) { }
	movq	-40(%rbp), %rdx	 # MEM[(struct vec * const &)&positions + 8], _162
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:202: 		positions.push_back(getParticlePosition(0.03f, 1.5f, -0.0f, time));  
	movq	-72(%rbp), %rcx	 # %sfp,
	movss	-184(%rbp), %xmm5	 # %sfp, time
	movss	.LC30(%rip), %xmm3	 #,
	movss	.LC31(%rip), %xmm2	 #,
	movss	%xmm5, 32(%rsp)	 # time,
	movss	.LC32(%rip), %xmm1	 #,
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_iterator.h:1028:       : _M_current(__i) { }
	movq	%rdx, -216(%rbp)	 # _162, %sfp
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:202: 		positions.push_back(getParticlePosition(0.03f, 1.5f, -0.0f, time));  
	call	_Z19getParticlePositionffff	 #
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/vector.tcc:112: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	movq	-32(%rbp), %rax	 # positions.D.86048._M_impl.D.85361._M_end_of_storage, prephitmp_128
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/vector.tcc:112: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	movq	-216(%rbp), %rdx	 # %sfp, _162
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/vector.tcc:112: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	movq	%rax, -192(%rbp)	 # prephitmp_128, %sfp
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/vector.tcc:112: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	cmpq	%rax, %rdx	 # prephitmp_128, _162
	je	.L130	 #,
	movq	-60(%rbp), %rax	 # MEM[(struct vec *)_152], MEM[(struct vec *)_152]
	movq	%rax, (%rdx)	 # MEM[(struct vec *)_152], *_162
	movl	-52(%rbp), %eax	 # MEM[(struct vec *)_152], MEM[(struct vec *)_152]
	movl	%eax, 8(%rdx)	 # MEM[(struct vec *)_152], *_162
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/vector.tcc:117: 	    ++this->_M_impl._M_finish;
	leaq	12(%rdx), %rax	 #, _166
	movq	%rax, -216(%rbp)	 # _166, %sfp
	movq	%rax, -40(%rbp)	 # _166, positions.D.86048._M_impl.D.85361._M_finish
.L131:
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:203: 		positions.push_back(getParticlePosition(0.75f, 0.0f, 0.0f, time));   
	movq	-72(%rbp), %rcx	 # %sfp,
	pxor	%xmm3, %xmm3	 #
	movaps	%xmm3, %xmm2	 #,
	movss	-184(%rbp), %xmm5	 # %sfp, time
	movss	.LC33(%rip), %xmm1	 #,
	movss	%xmm5, 32(%rsp)	 # time,
	call	_Z19getParticlePositionffff	 #
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/vector.tcc:112: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	movq	-216(%rbp), %rcx	 # %sfp, _166
	cmpq	%rcx, -192(%rbp)	 # _166, %sfp
	je	.L132	 #,
	movq	-60(%rbp), %rax	 # MEM[(struct vec *)_152], MEM[(struct vec *)_152]
	movq	%rax, (%rcx)	 # MEM[(struct vec *)_152], *prephitmp_254
	movl	-52(%rbp), %eax	 # MEM[(struct vec *)_152], MEM[(struct vec *)_152]
	movl	%eax, 8(%rcx)	 # MEM[(struct vec *)_152], *prephitmp_254
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/vector.tcc:117: 	    ++this->_M_impl._M_finish;
	leaq	12(%rcx), %rax	 #, _171
	movq	%rax, -216(%rbp)	 # _171, %sfp
	movq	%rax, -40(%rbp)	 # _171, positions.D.86048._M_impl.D.85361._M_finish
.L133:
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:204: 		positions.push_back(getParticlePosition(0.03f, -1.5f, 0.0f, time));  
	movq	-72(%rbp), %rcx	 # %sfp,
	pxor	%xmm3, %xmm3	 #
	movss	-184(%rbp), %xmm5	 # %sfp, time
	movss	.LC34(%rip), %xmm2	 #,
	movss	.LC32(%rip), %xmm1	 #,
	movss	%xmm5, 32(%rsp)	 # time,
	call	_Z19getParticlePositionffff	 #
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/vector.tcc:112: 	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
	movq	-216(%rbp), %rdx	 # %sfp, _171
	cmpq	%rdx, -192(%rbp)	 # _171, %sfp
	je	.L134	 #,
	movq	-60(%rbp), %rax	 # MEM[(struct vec *)_152], MEM[(struct vec *)_152]
	movq	%rax, (%rdx)	 # MEM[(struct vec *)_152], *prephitmp_267
	movl	-52(%rbp), %eax	 # MEM[(struct vec *)_152], MEM[(struct vec *)_152]
	movl	%eax, 8(%rdx)	 # MEM[(struct vec *)_152], *prephitmp_267
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/vector.tcc:117: 	    ++this->_M_impl._M_finish;
	leaq	12(%rdx), %rax	 #, tmp238
	movq	%rax, -40(%rbp)	 # tmp238, positions.D.86048._M_impl.D.85361._M_finish
.L135:
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:207: 		glColor3f(1,0,0);
	movq	__imp_glColor3f(%rip), %rax	 #, tmp306
	pxor	%xmm2, %xmm2	 #
	movl	$1, -168(%rbp)	 #,
	movaps	%xmm2, %xmm1	 #,
	movss	.LC9(%rip), %xmm0	 #,
	movq	%rax, -216(%rbp)	 # tmp306, %sfp
	call	*%rax	 # tmp306
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:209: 			glPushMatrix();
	movq	__imp_glPushMatrix(%rip), %rax	 #, tmp296
	movq	%rax, -72(%rbp)	 # tmp296, %sfp
	call	*%rax	 # tmp296
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_vector.h:1046: 	return *(this->_M_impl._M_start + __n);
	movq	-48(%rbp), %rax	 # positions.D.86048._M_impl.D.85361._M_start, _178
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:210: 			glTranslatef(positions[i].x, positions[i].y, positions[i].z);
	movq	__imp_glTranslatef(%rip), %rcx	 #, tmp297
	movss	8(%rax), %xmm2	 # MEM[(struct value_type &)_178].D.83958.z,
	movss	4(%rax), %xmm1	 # MEM[(struct value_type &)_178].D.83952.y,
	movq	%rcx, -184(%rbp)	 # tmp297, %sfp
	movss	(%rax), %xmm0	 # MEM[(struct value_type &)_178].D.83946.x,
	call	*%rcx	 # tmp297
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:211: 			drawSphere(0.4f, 32, 16);
	movss	.LC35(%rip), %xmm0	 #,
	movl	$16, %r8d	 #,
	movl	$32, %edx	 #,
	call	_Z10drawSpherefii	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:212: 			glPopMatrix();
	movq	__imp_glPopMatrix(%rip), %rdx	 #, tmp305
	movq	%rdx, -192(%rbp)	 # tmp305, %sfp
	call	*%rdx	 # tmp305
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:209: 			glPushMatrix();
	movq	-72(%rbp), %rax	 # %sfp, tmp296
	call	*%rax	 # tmp296
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_vector.h:1046: 	return *(this->_M_impl._M_start + __n);
	movq	-48(%rbp), %rax	 # positions.D.86048._M_impl.D.85361._M_start, _96
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:210: 			glTranslatef(positions[i].x, positions[i].y, positions[i].z);
	movq	-184(%rbp), %rcx	 # %sfp, tmp297
	movss	12(%rax), %xmm0	 # MEM[(struct value_type &)_96 + 12].D.83946.x, MEM[(struct value_type &)_96 + 12].D.83946.x
	movss	20(%rax), %xmm2	 # MEM[(struct value_type &)_96 + 12].D.83958.z,
	movss	16(%rax), %xmm1	 # MEM[(struct value_type &)_96 + 12].D.83952.y,
	call	*%rcx	 # tmp297
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:211: 			drawSphere(0.4f, 32, 16);
	movss	.LC35(%rip), %xmm0	 #,
	movl	$16, %r8d	 #,
	movl	$32, %edx	 #,
	call	_Z10drawSpherefii	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:212: 			glPopMatrix();
	movq	-192(%rbp), %rdx	 # %sfp, tmp305
	call	*%rdx	 # tmp305
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:215: 		glColor3f(1,1,1);
	movss	.LC9(%rip), %xmm2	 #,
	movq	-216(%rbp), %r11	 # %sfp, tmp306
	movaps	%xmm2, %xmm1	 #,
	movaps	%xmm2, %xmm0	 # tmp21,
	call	*%r11	 # tmp306
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:217: 			glPushMatrix();
	movq	-72(%rbp), %rax	 # %sfp, tmp296
	call	*%rax	 # tmp296
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_vector.h:1046: 	return *(this->_M_impl._M_start + __n);
	movq	-48(%rbp), %rax	 # positions.D.86048._M_impl.D.85361._M_start, _233
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:218: 			glTranslatef(positions[i].x, positions[i].y, positions[i].z);
	movq	-184(%rbp), %rcx	 # %sfp, tmp297
	movss	24(%rax), %xmm0	 # MEM[(struct value_type &)_233 + 24].D.83946.x, MEM[(struct value_type &)_233 + 24].D.83946.x
	movss	32(%rax), %xmm2	 # MEM[(struct value_type &)_233 + 24].D.83958.z,
	movss	28(%rax), %xmm1	 # MEM[(struct value_type &)_233 + 24].D.83952.y,
	call	*%rcx	 # tmp297
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:219: 			drawSphere(0.4f, 32, 16);
	movss	.LC35(%rip), %xmm0	 #,
	movl	$16, %r8d	 #,
	movl	$32, %edx	 #,
	call	_Z10drawSpherefii	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:220: 			glPopMatrix();
	movq	-192(%rbp), %rdx	 # %sfp, tmp305
	call	*%rdx	 # tmp305
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:217: 			glPushMatrix();
	movq	-72(%rbp), %rax	 # %sfp, tmp296
	call	*%rax	 # tmp296
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_vector.h:1046: 	return *(this->_M_impl._M_start + __n);
	movq	-48(%rbp), %rax	 # positions.D.86048._M_impl.D.85361._M_start, _99
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:218: 			glTranslatef(positions[i].x, positions[i].y, positions[i].z);
	movq	-184(%rbp), %rcx	 # %sfp, tmp297
	movss	36(%rax), %xmm0	 # MEM[(struct value_type &)_99 + 36].D.83946.x, MEM[(struct value_type &)_99 + 36].D.83946.x
	movss	44(%rax), %xmm2	 # MEM[(struct value_type &)_99 + 36].D.83958.z,
	movss	40(%rax), %xmm1	 # MEM[(struct value_type &)_99 + 36].D.83952.y,
	call	*%rcx	 # tmp297
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:219: 			drawSphere(0.4f, 32, 16);
	movss	.LC35(%rip), %xmm0	 #,
	movl	$16, %r8d	 #,
	movl	$32, %edx	 #,
	call	_Z10drawSpherefii	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:220: 			glPopMatrix();
	movq	-192(%rbp), %rdx	 # %sfp, tmp305
	call	*%rdx	 # tmp305
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/ostream:616: 	__ostream_insert(__out, __s,
	movq	.refptr._ZSt4cout(%rip), %rax	 #, tmp304
	movl	$16, %r8d	 #,
	leaq	.LC36(%rip), %rdx	 #, tmp272
	movq	%rax, %rcx	 # tmp304,
	movq	%rax, -72(%rbp)	 # tmp304, %sfp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:224: 		std::cout << "Celková síla: " << totalStrongForce(positions) << std::endl;
	movq	-208(%rbp), %rcx	 # %sfp,
	call	_Z16totalStrongForceRKSt6vectorIN3glm3vecILi3EfLNS0_9qualifierE0EEESaIS3_EE	 #
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/ostream:228: 	return _M_insert(static_cast<double>(__f));
	movq	-72(%rbp), %rcx	 # %sfp,
	pxor	%xmm1, %xmm1	 #
	cvtss2sd	%xmm0, %xmm1	 # tmp314,
	call	_ZNSo9_M_insertIdEERSoT_	 #
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/ostream:228: 	return _M_insert(static_cast<double>(__f));
	movq	%rax, %rcx	 # tmp315, _103
	movq	%rax, -184(%rbp)	 # _103, %sfp
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/ostream:685:     { return flush(__os.put(__os.widen('\n'))); }
	movq	(%rax), %rax	 # MEM[(struct basic_ostream *)_103]._vptr.basic_ostream, MEM[(struct basic_ostream *)_103]._vptr.basic_ostream
	movq	-24(%rax), %rax	 # MEM[(long long int *)_181 + -24B], MEM[(long long int *)_181 + -24B]
	movq	240(%rcx,%rax), %rax	 # MEM[(const struct __ctype_type * *)_184 + 240B], _189
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/basic_ios.h:49:       if (!__f)
	testq	%rax, %rax	 # _189
	movq	%rax, -72(%rbp)	 # _189, %sfp
	je	.L156	 #,
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/locale_facets.h:877: 	if (_M_widen_ok)
	movq	-72(%rbp), %rax	 # %sfp, _189
	cmpb	$0, 56(%rax)	 #, MEM[(const struct ctype *)_189]._M_widen_ok
	je	.L137	 #,
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/ostream:685:     { return flush(__os.put(__os.widen('\n'))); }
	movsbl	67(%rax), %edx	 # MEM[(const struct ctype *)_189]._M_widen[10], _131
.L138:
	movq	-184(%rbp), %rcx	 # %sfp,
	movl	$1, -168(%rbp)	 #,
	call	_ZNSo3putEc	 #
	movq	%rax, %rcx	 # tmp317, _187
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/ostream:707:     { return __os.flush(); }
	call	_ZNSo5flushEv	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:226: 		glfwSwapBuffers(window);
	movq	-200(%rbp), %rcx	 # %sfp,
	call	glfwSwapBuffers	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:227: 		glfwPollEvents();
	call	glfwPollEvents	 #
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_vector.h:336: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	-48(%rbp), %rcx	 # positions._M_impl.D.85361._M_start, _213
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_vector.h:353: 	if (__p)
	testq	%rcx, %rcx	 # _213
	je	.L129	 #,
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_vector.h:336: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	-32(%rbp), %rdx	 # positions._M_impl.D.85361._M_end_of_storage, tmp282
	subq	%rcx, %rdx	 # _213, tmp282
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/ext/new_allocator.h:145: 	::operator delete(__p
	call	_ZdlPvy	 #
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/alloc_traits.h:496:       { __a.deallocate(__p, __n); }
	jmp	.L129	 #
	.p2align 4,,10
	.p2align 3
.L137:
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/locale_facets.h:879: 	this->_M_widen_init();
	movl	$1, -168(%rbp)	 #,
	movq	-72(%rbp), %rcx	 # %sfp,
	call	_ZNKSt5ctypeIcE13_M_widen_initEv	 #
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/locale_facets.h:880: 	return this->do_widen(__c);
	movq	-72(%rbp), %rax	 # %sfp, _189
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx	 #, tmp281
	movl	$10, %edx	 #, _131
	movq	(%rax), %rax	 # MEM[(const struct ctype *)_189].D.73301._vptr.facet, MEM[(const struct ctype *)_189].D.73301._vptr.facet
	movq	48(%rax), %rax	 # MEM[(int (*) () *)_202 + 48B], _203
	cmpq	%rcx, %rax	 # tmp281, _203
	je	.L138	 #,
	movq	-72(%rbp), %rcx	 # %sfp,
	call	*%rax	 # _203
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/ostream:685:     { return flush(__os.put(__os.widen('\n'))); }
	movsbl	%al, %edx	 # tmp316, _131
	jmp	.L138	 #
	.p2align 4,,10
	.p2align 3
.L134:
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/vector.tcc:121: 	  _M_realloc_insert(end(), std::forward<_Args>(__args)...);
	movl	$1, -168(%rbp)	 #,
	movq	-72(%rbp), %r8	 # %sfp,
	movq	-192(%rbp), %rdx	 # %sfp,
	movq	-208(%rbp), %rcx	 # %sfp,
	call	_ZNSt6vectorIN3glm3vecILi3EfLNS0_9qualifierE0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_	 #
	jmp	.L135	 #
	.p2align 4,,10
	.p2align 3
.L132:
	movl	$1, -168(%rbp)	 #,
	movq	-72(%rbp), %r8	 # %sfp,
	movq	-192(%rbp), %rdx	 # %sfp,
	movq	-208(%rbp), %rcx	 # %sfp,
	call	_ZNSt6vectorIN3glm3vecILi3EfLNS0_9qualifierE0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_	 #
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_iterator.h:1028:       : _M_current(__i) { }
	movq	-40(%rbp), %rax	 # MEM[(struct vec * const &)&positions + 8], _171
	movq	%rax, -216(%rbp)	 # _171, %sfp
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_vector.h:336: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	-32(%rbp), %rax	 # positions._M_impl.D.85361._M_end_of_storage, prephitmp_128
	movq	%rax, -192(%rbp)	 # prephitmp_128, %sfp
	jmp	.L133	 #
	.p2align 4,,10
	.p2align 3
.L130:
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/vector.tcc:121: 	  _M_realloc_insert(end(), std::forward<_Args>(__args)...);
	movl	$1, -168(%rbp)	 #,
	movq	-72(%rbp), %r8	 # %sfp,
	movq	-216(%rbp), %rdx	 # %sfp,
	movq	-208(%rbp), %rcx	 # %sfp,
	call	_ZNSt6vectorIN3glm3vecILi3EfLNS0_9qualifierE0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_	 #
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_iterator.h:1028:       : _M_current(__i) { }
	movq	-40(%rbp), %rax	 # MEM[(struct vec * const &)&positions + 8], _166
	movq	%rax, -216(%rbp)	 # _166, %sfp
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_vector.h:336: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	-32(%rbp), %rax	 # positions._M_impl.D.85361._M_end_of_storage, prephitmp_128
	movq	%rax, -192(%rbp)	 # prephitmp_128, %sfp
	jmp	.L131	 #
	.p2align 4,,10
	.p2align 3
.L155:
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:230: 	glfwTerminate();
	call	glfwTerminate	 #
.L123:
	movq	-240(%rbp), %rcx	 # %sfp,
	call	_Unwind_SjLj_Unregister	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:231: }
	movq	-8(%rbp), %r10	 #,
	leave	
	leaq	-8(%r10), %rsp	 #,
	ret	
.L154:
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/ostream:616: 	__ostream_insert(__out, __s,
	movq	.refptr._ZSt4cout(%rip), %rcx	 #, tmp304
	movl	$25, %r8d	 #,
	leaq	.LC22(%rip), %rdx	 #, tmp170
	movq	%rcx, -72(%rbp)	 # tmp304, %sfp
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x	 #
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/ostream:685:     { return flush(__os.put(__os.widen('\n'))); }
	movq	-72(%rbp), %rcx	 # %sfp, tmp304
	movq	(%rcx), %rax	 # cout._vptr.basic_ostream, cout._vptr.basic_ostream
	movq	-24(%rax), %rax	 # MEM[(long long int *)_119 + -24B], MEM[(long long int *)_119 + -24B]
	movq	240(%rax,%rcx), %rax	 # MEM[(const struct __ctype_type * *)_122 + 240B], _127
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/basic_ios.h:49:       if (!__f)
	testq	%rax, %rax	 # _127
	movq	%rax, -184(%rbp)	 # _127, %sfp
	je	.L157	 #,
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/locale_facets.h:877: 	if (_M_widen_ok)
	movq	-184(%rbp), %rax	 # %sfp, _127
	cmpb	$0, 56(%rax)	 #, MEM[(const struct ctype *)_127]._M_widen_ok
	je	.L126	 #,
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/ostream:685:     { return flush(__os.put(__os.widen('\n'))); }
	movsbl	67(%rax), %edx	 # MEM[(const struct ctype *)_127]._M_widen[10], _141
.L127:
	movl	$-1, -168(%rbp)	 #,
	movq	-72(%rbp), %rcx	 # %sfp,
	call	_ZNSo3putEc	 #
	movq	%rax, %rcx	 # tmp312, _125
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/ostream:707:     { return __os.flush(); }
	call	_ZNSo5flushEv	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:173: 		glfwTerminate();
	call	glfwTerminate	 #
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:174: 		return;
	jmp	.L123	 #
.L126:
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/locale_facets.h:879: 	this->_M_widen_init();
	movq	-184(%rbp), %rcx	 # %sfp,
	movl	$-1, -168(%rbp)	 #,
	call	_ZNKSt5ctypeIcE13_M_widen_initEv	 #
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/locale_facets.h:880: 	return this->do_widen(__c);
	movq	-184(%rbp), %rax	 # %sfp, _127
	movl	$10, %edx	 #, _141
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rcx	 #, tmp178
	movq	(%rax), %rax	 # MEM[(const struct ctype *)_127].D.73301._vptr.facet, MEM[(const struct ctype *)_127].D.73301._vptr.facet
	movq	48(%rax), %rax	 # MEM[(int (*) () *)_142 + 48B], _143
	cmpq	%rcx, %rax	 # tmp178, _143
	je	.L127	 #,
	movq	-184(%rbp), %rcx	 # %sfp,
	call	*%rax	 # _143
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/ostream:685:     { return flush(__os.put(__os.widen('\n'))); }
	movsbl	%al, %edx	 # tmp311, _141
	jmp	.L127	 #
.L156:
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/basic_ios.h:50: 	__throw_bad_cast();
	call	_ZSt16__throw_bad_castv	 #
.L157:
	call	_ZSt16__throw_bad_castv	 #
.L145:
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_vector.h:336: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	-48(%rbp), %rcx	 # positions._M_impl.D.85361._M_start, _217
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_vector.h:336: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	-32(%rbp), %rdx	 # positions._M_impl.D.85361._M_end_of_storage, _218
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_vector.h:336: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	-160(%rbp), %rax	 #, tmp285
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_vector.h:336: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	subq	%rcx, %rdx	 # _217, _218
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_vector.h:353: 	if (__p)
	testq	%rcx, %rcx	 # _217
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_vector.h:336: 		      _M_impl._M_end_of_storage - _M_impl._M_start);
	movq	%rax, -72(%rbp)	 # tmp285, %sfp
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/bits/stl_vector.h:353: 	if (__p)
	je	.L142	 #,
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/ext/new_allocator.h:145: 	::operator delete(__p
	call	_ZdlPvy	 #
.L142:
	movl	$-1, -168(%rbp)	 #,
	movq	-72(%rbp), %rcx	 # %sfp,
	call	_Unwind_SjLj_Resume	 #
	.section	.gcc_except_table,"w"
.LLSDA3960:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3960-.LLSDACSB3960
.LLSDACSB3960:
	.uleb128 0
	.uleb128 0
.LLSDACSE3960:
	.text
	.section	.text.startup,"x"
	.p2align 4
	.def	_GLOBAL__sub_I_cameraPos;	.scl	3;	.type	32;	.endef
_GLOBAL__sub_I_cameraPos:
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/iostream:74:   static ios_base::Init __ioinit;
	leaq	_ZStL8__ioinit(%rip), %rcx	 #, tmp82
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:231: }
	subq	$40, %rsp	 #,
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/iostream:74:   static ios_base::Init __ioinit;
	call	_ZNSt8ios_base4InitC1Ev	 #
	leaq	__tcf_0(%rip), %rcx	 #, tmp83
 # C:/Users/rodina/Documents/projects/Atom/render.cpp:231: }
	addq	$40, %rsp	 #,
 # D:/Programy/RedPanda-Cpp/mingw64/lib/gcc/x86_64-w64-mingw32/11.4.0/include/c++/iostream:74:   static ios_base::Init __ioinit;
	jmp	atexit	 #
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I_cameraPos
	.globl	orbitRadius
	.data
	.align 4
orbitRadius:
	.long	1077936128
	.globl	electronAngle
	.bss
	.align 4
electronAngle:
	.space 4
	.globl	firstMouse
	.data
firstMouse:
	.byte	1
	.globl	lastY
	.align 4
lastY:
	.long	1133903872
	.globl	lastX
	.align 4
lastX:
	.long	1137180672
	.globl	pitch
	.bss
	.align 4
pitch:
	.space 4
	.globl	yaw
	.data
	.align 4
yaw:
	.long	-1028390912
	.globl	cameraSpeed
	.align 4
cameraSpeed:
	.long	1028443341
	.globl	cameraUp
	.align 8
cameraUp:
 # <anonymous>:
 # x:
	.long	0
 # <anonymous>:
 # y:
	.long	1065353216
 # <anonymous>:
 # z:
	.long	0
	.globl	cameraFront
	.align 8
cameraFront:
 # <anonymous>:
 # x:
	.long	0
 # <anonymous>:
 # y:
	.long	0
 # <anonymous>:
 # z:
	.long	-1082130432
	.globl	cameraPos
	.align 8
cameraPos:
 # <anonymous>:
 # x:
	.long	0
 # <anonymous>:
 # y:
	.long	0
 # <anonymous>:
 # z:
	.long	1084227584
.lcomm _ZStL8__ioinit,1,1
	.section .rdata,"dr"
	.align 4
.LC0:
	.long	1065348106
	.align 4
.LC1:
	.long	-1082132987
	.align 4
.LC2:
	.long	1016002637
	.align 4
.LC3:
	.long	1065350661
	.align 4
.LC4:
	.long	1036831949
	.align 4
.LC5:
	.long	1118961664
	.align 4
.LC6:
	.long	-1028521984
	.align 4
.LC7:
	.long	1016003125
	.align 4
.LC9:
	.long	1065353216
	.align 8
.LC10:
	.long	0
	.long	1081507840
	.align 8
.LC11:
	.long	1413754136
	.long	1074340347
	.align 16
.LC12:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 16
.LC13:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.align 8
.LC14:
	.long	1413754136
	.long	1075388923
	.align 4
.LC15:
	.long	1028443341
	.align 4
.LC16:
	.long	1189765120
	.align 4
.LC17:
	.long	925353388
	.align 4
.LC18:
	.long	927552412
	.align 4
.LC19:
	.long	1041865114
	.align 8
.LC23:
	.long	348805365
	.long	1067791662
	.align 8
.LC24:
	.long	348805365
	.long	-1079691986
	.align 8
.LC25:
	.long	465073820
	.long	1068254952
	.align 8
.LC26:
	.long	465073820
	.long	-1079228696
	.align 8
.LC27:
	.long	0
	.long	1079574528
	.align 8
.LC28:
	.long	-1717986918
	.long	1069128089
	.align 4
.LC29:
	.long	-1086324736
	.set	.LC30,.LC13
	.align 4
.LC31:
	.long	1069547520
	.align 4
.LC32:
	.long	1022739087
	.align 4
.LC33:
	.long	1061158912
	.align 4
.LC34:
	.long	-1077936128
	.align 4
.LC35:
	.long	1053609165
	.ident	"GCC: (x86_64-posix-seh, Built by MinGW-Builds project) 11.4.0"
	.def	_ZNSt8ios_base4InitD1Ev;	.scl	2;	.type	32;	.endef
	.def	sincosf;	.scl	2;	.type	32;	.endef
	.def	sqrtf;	.scl	2;	.type	32;	.endef
	.def	glfwGetKey;	.scl	2;	.type	32;	.endef
	.def	glfwSetWindowShouldClose;	.scl	2;	.type	32;	.endef
	.def	tan;	.scl	2;	.type	32;	.endef
	.def	sincos;	.scl	2;	.type	32;	.endef
	.def	sinf;	.scl	2;	.type	32;	.endef
	.def	cosf;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.def	_ZSt20__throw_length_errorPKc;	.scl	2;	.type	32;	.endef
	.def	glfwInit;	.scl	2;	.type	32;	.endef
	.def	glfwWindowHint;	.scl	2;	.type	32;	.endef
	.def	glfwCreateWindow;	.scl	2;	.type	32;	.endef
	.def	glfwMakeContextCurrent;	.scl	2;	.type	32;	.endef
	.def	glfwSetFramebufferSizeCallback;	.scl	2;	.type	32;	.endef
	.def	glfwSetCursorPosCallback;	.scl	2;	.type	32;	.endef
	.def	glfwSetInputMode;	.scl	2;	.type	32;	.endef
	.def	glfwSetKeyCallback;	.scl	2;	.type	32;	.endef
	.def	glfwGetTime;	.scl	2;	.type	32;	.endef
	.def	glfwWindowShouldClose;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_x;	.scl	2;	.type	32;	.endef
	.def	_Z16totalStrongForceRKSt6vectorIN3glm3vecILi3EfLNS0_9qualifierE0EEESaIS3_EE;	.scl	2;	.type	32;	.endef
	.def	_ZNSo9_M_insertIdEERSoT_;	.scl	2;	.type	32;	.endef
	.def	_ZNSo3putEc;	.scl	2;	.type	32;	.endef
	.def	_ZNSo5flushEv;	.scl	2;	.type	32;	.endef
	.def	glfwSwapBuffers;	.scl	2;	.type	32;	.endef
	.def	glfwPollEvents;	.scl	2;	.type	32;	.endef
	.def	_ZNKSt5ctypeIcE13_M_widen_initEv;	.scl	2;	.type	32;	.endef
	.def	glfwTerminate;	.scl	2;	.type	32;	.endef
	.def	_ZSt16__throw_bad_castv;	.scl	2;	.type	32;	.endef
	.def	_Unwind_SjLj_Resume;	.scl	2;	.type	32;	.endef
	.def	_ZNSt8ios_base4InitC1Ev;	.scl	2;	.type	32;	.endef
	.def	atexit;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr._ZSt4cout, "dr"
	.globl	.refptr._ZSt4cout
	.linkonce	discard
.refptr._ZSt4cout:
	.quad	_ZSt4cout
