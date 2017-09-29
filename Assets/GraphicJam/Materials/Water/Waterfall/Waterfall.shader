// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:3,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:2,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.0005,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32396,y:32596,varname:node_2865,prsc:2|diff-8413-OUT,spec-637-OUT,gloss-5989-OUT,normal-4546-OUT,clip-4153-OUT,disp-1300-XYZ,tess-2493-OUT;n:type:ShaderForge.SFN_Tex2d,id:4824,x:30869,y:32645,ptovrint:False,ptlb:FoamMask,ptin:_FoamMask,varname:_FoamMask,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:dd4587a5fe57d4c468abbd47dcdc4258,ntxv:0,isnm:False|UVIN-3451-OUT;n:type:ShaderForge.SFN_Tex2d,id:2585,x:29969,y:32600,ptovrint:False,ptlb:DisplacementTexture,ptin:_DisplacementTexture,varname:_DisplacementTexture,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:cfc80cb02c6a12444880bff82a5621fa,ntxv:0,isnm:False|UVIN-9997-UVOUT;n:type:ShaderForge.SFN_Add,id:3451,x:30673,y:32615,varname:node_3451,prsc:2|A-7027-OUT,B-1775-OUT;n:type:ShaderForge.SFN_Append,id:7027,x:30497,y:32537,varname:node_7027,prsc:2|A-182-OUT,B-9024-OUT;n:type:ShaderForge.SFN_Lerp,id:8413,x:31760,y:32595,varname:node_8413,prsc:2|A-7208-RGB,B-9450-RGB,T-3278-OUT;n:type:ShaderForge.SFN_Multiply,id:182,x:30245,y:32583,varname:node_182,prsc:2|A-2585-R,B-1102-OUT;n:type:ShaderForge.SFN_Slider,id:1102,x:29790,y:32862,ptovrint:False,ptlb:Warp Strength,ptin:_WarpStrength,varname:_WarpStrength,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.2;n:type:ShaderForge.SFN_Multiply,id:9024,x:30245,y:32710,varname:node_9024,prsc:2|A-2585-G,B-1102-OUT;n:type:ShaderForge.SFN_Time,id:3792,x:29384,y:32533,varname:node_3792,prsc:2;n:type:ShaderForge.SFN_Panner,id:9997,x:29790,y:32600,varname:node_9997,prsc:2,spu:1,spv:1|UVIN-153-OUT,DIST-4278-OUT;n:type:ShaderForge.SFN_Slider,id:9456,x:29227,y:32738,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:_Speed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.5;n:type:ShaderForge.SFN_Multiply,id:4278,x:29579,y:32671,varname:node_4278,prsc:2|A-3792-T,B-9456-OUT;n:type:ShaderForge.SFN_Color,id:7208,x:30869,y:32317,ptovrint:False,ptlb:Background Color,ptin:_BackgroundColor,varname:_BackgroundColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2509804,c2:0.3960785,c3:0.5921569,c4:1;n:type:ShaderForge.SFN_Color,id:9450,x:30869,y:32480,ptovrint:False,ptlb:Foam Color,ptin:_FoamColor,varname:_FoamColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4862745,c2:0.6941177,c3:0.7764707,c4:1;n:type:ShaderForge.SFN_Vector1,id:637,x:32111,y:32644,varname:node_637,prsc:2,v1:0;n:type:ShaderForge.SFN_Slider,id:5989,x:31915,y:32747,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Gloss,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Append,id:5279,x:31594,y:32901,varname:node_5279,prsc:2|A-5946-OUT,B-24-OUT,C-2025-OUT;n:type:ShaderForge.SFN_Vector1,id:5946,x:31409,y:32874,varname:node_5946,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:2025,x:31409,y:32955,varname:node_2025,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:5111,x:31927,y:32907,varname:node_5111,prsc:2|A-5279-OUT,B-3494-OUT;n:type:ShaderForge.SFN_Slider,id:3494,x:31537,y:33058,ptovrint:False,ptlb:Wave height,ptin:_Waveheight,varname:_Waveheight,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4155918,max:10;n:type:ShaderForge.SFN_Slider,id:2493,x:32060,y:33109,ptovrint:False,ptlb:Tesselation,ptin:_Tesselation,varname:_Tesselation,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:32;n:type:ShaderForge.SFN_Vector1,id:4959,x:30196,y:33118,varname:node_4959,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Subtract,id:24,x:30381,y:33041,varname:node_24,prsc:2|A-2585-B,B-4959-OUT;n:type:ShaderForge.SFN_Transform,id:1300,x:32091,y:32941,varname:node_1300,prsc:2,tffrom:0,tfto:1|IN-5111-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:1805,x:29410,y:32343,varname:node_1805,prsc:2;n:type:ShaderForge.SFN_Append,id:153,x:29606,y:32332,varname:node_153,prsc:2|A-1805-X,B-1805-Z;n:type:ShaderForge.SFN_FragmentPosition,id:833,x:30297,y:32832,varname:node_833,prsc:2;n:type:ShaderForge.SFN_Append,id:1775,x:30497,y:32710,varname:node_1775,prsc:2|A-833-X,B-833-Z;n:type:ShaderForge.SFN_TexCoord,id:5958,x:30494,y:32227,varname:node_5958,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Subtract,id:3055,x:30728,y:32115,varname:node_3055,prsc:2|A-6745-OUT,B-3403-OUT;n:type:ShaderForge.SFN_Tex2d,id:1091,x:30318,y:32096,ptovrint:False,ptlb:node_1091,ptin:_node_1091,varname:_node_1091,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ff50eb98fa8b43d428969851f282837d,ntxv:0,isnm:False|UVIN-1658-OUT;n:type:ShaderForge.SFN_Add,id:5446,x:32045,y:32478,varname:node_5446,prsc:2|A-8200-OUT,B-8413-OUT;n:type:ShaderForge.SFN_TexCoord,id:5130,x:29282,y:31929,varname:node_5130,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:488,x:29698,y:32018,varname:node_488,prsc:2|A-5130-V,B-1632-OUT;n:type:ShaderForge.SFN_Time,id:1298,x:29267,y:32135,varname:node_1298,prsc:2;n:type:ShaderForge.SFN_Append,id:1658,x:30237,y:31935,varname:node_1658,prsc:2|A-5130-U,B-7779-OUT;n:type:ShaderForge.SFN_Clamp01,id:8200,x:30904,y:32035,varname:node_8200,prsc:2|IN-3055-OUT;n:type:ShaderForge.SFN_Add,id:3403,x:30707,y:32297,varname:node_3403,prsc:2|A-5958-V,B-7717-OUT;n:type:ShaderForge.SFN_Slider,id:7717,x:30396,y:32409,ptovrint:False,ptlb:Edge,ptin:_Edge,varname:_Edge,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Add,id:8168,x:31224,y:32270,varname:node_8168,prsc:2|A-3278-OUT,B-4824-R;n:type:ShaderForge.SFN_Clamp01,id:6995,x:31385,y:32366,varname:node_6995,prsc:2|IN-8168-OUT;n:type:ShaderForge.SFN_Multiply,id:5452,x:29881,y:31973,varname:node_5452,prsc:2|A-1525-OUT,B-8148-OUT;n:type:ShaderForge.SFN_Slider,id:1525,x:29494,y:31852,ptovrint:False,ptlb:Outward Waves Domain,ptin:_OutwardWavesDomain,varname:_Edge_Size,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.649573,max:20;n:type:ShaderForge.SFN_Clamp01,id:7534,x:30051,y:31973,varname:node_7534,prsc:2|IN-5452-OUT;n:type:ShaderForge.SFN_OneMinus,id:2814,x:30237,y:31787,varname:node_2814,prsc:2|IN-5537-OUT;n:type:ShaderForge.SFN_Multiply,id:7779,x:29859,y:32127,varname:node_7779,prsc:2|A-1525-OUT,B-488-OUT;n:type:ShaderForge.SFN_Multiply,id:1632,x:29481,y:32179,varname:node_1632,prsc:2|A-1298-T,B-6569-OUT;n:type:ShaderForge.SFN_Slider,id:6569,x:28924,y:32302,ptovrint:False,ptlb:Outward Waves Speed,ptin:_OutwardWavesSpeed,varname:node_6569,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:10;n:type:ShaderForge.SFN_Add,id:853,x:31143,y:31877,varname:node_853,prsc:2|A-8840-OUT,B-8200-OUT;n:type:ShaderForge.SFN_Slider,id:8840,x:30747,y:31863,ptovrint:False,ptlb:Foam Threshold,ptin:_FoamThreshold,varname:node_8840,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.6617864,max:1;n:type:ShaderForge.SFN_Floor,id:3278,x:31316,y:31947,varname:node_3278,prsc:2|IN-853-OUT;n:type:ShaderForge.SFN_Subtract,id:5537,x:30051,y:31815,varname:node_5537,prsc:2|A-5452-OUT,B-1024-OUT;n:type:ShaderForge.SFN_Slider,id:1024,x:29724,y:31796,ptovrint:False,ptlb:Otwards Waves Bias,ptin:_OtwardsWavesBias,varname:node_1024,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:0.4273504,max:5;n:type:ShaderForge.SFN_Add,id:6745,x:30541,y:31766,varname:node_6745,prsc:2|A-2814-OUT,B-1091-R;n:type:ShaderForge.SFN_OneMinus,id:8148,x:29481,y:32044,varname:node_8148,prsc:2|IN-5130-V;n:type:ShaderForge.SFN_Add,id:4537,x:31441,y:32139,varname:node_4537,prsc:2|A-4450-OUT,B-8200-OUT;n:type:ShaderForge.SFN_Slider,id:4450,x:31045,y:32125,ptovrint:False,ptlb:Foam Threshold_copy,ptin:_FoamThreshold_copy,varname:_FoamThreshold_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.9623673,max:1;n:type:ShaderForge.SFN_Floor,id:4153,x:31614,y:32209,varname:node_4153,prsc:2|IN-4537-OUT;n:type:ShaderForge.SFN_Vector3,id:4546,x:32061,y:32833,varname:node_4546,prsc:2,v1:0,v2:1,v3:0;proporder:4824-2585-1102-9456-7208-9450-5989-3494-2493-1091-7717-1525-6569-8840-1024-4450;pass:END;sub:END;*/

Shader "Shader Forge/Water" {
    Properties {
        _FoamMask ("FoamMask", 2D) = "white" {}
        _DisplacementTexture ("DisplacementTexture", 2D) = "white" {}
        _WarpStrength ("Warp Strength", Range(0, 0.2)) = 0
        _Speed ("Speed", Range(0, 0.5)) = 0
        _BackgroundColor ("Background Color", Color) = (0.2509804,0.3960785,0.5921569,1)
        _FoamColor ("Foam Color", Color) = (0.4862745,0.6941177,0.7764707,1)
        _Gloss ("Gloss", Range(0, 1)) = 0
        _Waveheight ("Wave height", Range(0, 10)) = 0.4155918
        _Tesselation ("Tesselation", Range(1, 32)) = 1
        _node_1091 ("node_1091", 2D) = "white" {}
        _Edge ("Edge", Range(0, 1)) = 0
        _OutwardWavesDomain ("Outward Waves Domain", Range(0, 20)) = 2.649573
        _OutwardWavesSpeed ("Outward Waves Speed", Range(0, 10)) = 0.2
        _FoamThreshold ("Foam Threshold", Range(0, 1)) = 0.6617864
        _OtwardsWavesBias ("Otwards Waves Bias", Range(-5, 5)) = 0.4273504
        _FoamThreshold_copy ("Foam Threshold_copy", Range(0, 1)) = 0.9623673
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _TimeEditor;
            uniform sampler2D _DisplacementTexture; uniform float4 _DisplacementTexture_ST;
            uniform float _Speed;
            uniform float4 _BackgroundColor;
            uniform float4 _FoamColor;
            uniform float _Gloss;
            uniform float _Waveheight;
            uniform float _Tesselation;
            uniform sampler2D _node_1091; uniform float4 _node_1091_ST;
            uniform float _Edge;
            uniform float _OutwardWavesDomain;
            uniform float _OutwardWavesSpeed;
            uniform float _FoamThreshold;
            uniform float _OtwardsWavesBias;
            uniform float _FoamThreshold_copy;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD10;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                    float2 texcoord1 : TEXCOORD1;
                    float2 texcoord2 : TEXCOORD2;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    o.texcoord1 = v.texcoord1;
                    o.texcoord2 = v.texcoord2;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 node_3792 = _Time + _TimeEditor;
                    float2 node_9997 = (float2(mul(unity_ObjectToWorld, v.vertex).r,mul(unity_ObjectToWorld, v.vertex).b)+(node_3792.g*_Speed)*float2(1,1));
                    float4 _DisplacementTexture_var = tex2Dlod(_DisplacementTexture,float4(TRANSFORM_TEX(node_9997, _DisplacementTexture),0.0,0));
                    v.vertex.xyz += mul( unity_WorldToObject, float4((float3(0.0,(_DisplacementTexture_var.b-0.5),0.0)*_Waveheight),0) ).xyz.rgb;
                }
                float Tessellation(TessVertex v){
                    return _Tesselation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    v.texcoord1 = vi[0].texcoord1*bary.x + vi[1].texcoord1*bary.y + vi[2].texcoord1*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = float3(0,1,0);
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float node_5452 = (_OutwardWavesDomain*(1.0 - i.uv0.g));
                float4 node_1298 = _Time + _TimeEditor;
                float2 node_1658 = float2(i.uv0.r,(_OutwardWavesDomain*(i.uv0.g+(node_1298.g*_OutwardWavesSpeed))));
                float4 _node_1091_var = tex2D(_node_1091,TRANSFORM_TEX(node_1658, _node_1091));
                float node_8200 = saturate((((1.0 - (node_5452-_OtwardsWavesBias))+_node_1091_var.r)-(i.uv0.g+_Edge)));
                clip(floor((_FoamThreshold_copy+node_8200)) - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _Gloss;
                float perceptualRoughness = 1.0 - _Gloss;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = 0.0;
                float specularMonochrome;
                float node_3278 = floor((_FoamThreshold+node_8200));
                float3 node_8413 = lerp(_BackgroundColor.rgb,_FoamColor.rgb,node_3278);
                float3 diffuseColor = node_8413; // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                half surfaceReduction;
                #ifdef UNITY_COLORSPACE_GAMMA
                    surfaceReduction = 1.0-0.28*roughness*perceptualRoughness;
                #else
                    surfaceReduction = 1.0/(roughness*roughness + 1.0);
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                half grazingTerm = saturate( gloss + specularMonochrome );
                float3 indirectSpecular = (gi.indirect.specular);
                indirectSpecular *= FresnelLerp (specularColor, grazingTerm, NdotV);
                indirectSpecular *= surfaceReduction;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _TimeEditor;
            uniform sampler2D _DisplacementTexture; uniform float4 _DisplacementTexture_ST;
            uniform float _Speed;
            uniform float4 _BackgroundColor;
            uniform float4 _FoamColor;
            uniform float _Gloss;
            uniform float _Waveheight;
            uniform float _Tesselation;
            uniform sampler2D _node_1091; uniform float4 _node_1091_ST;
            uniform float _Edge;
            uniform float _OutwardWavesDomain;
            uniform float _OutwardWavesSpeed;
            uniform float _FoamThreshold;
            uniform float _OtwardsWavesBias;
            uniform float _FoamThreshold_copy;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                    float2 texcoord1 : TEXCOORD1;
                    float2 texcoord2 : TEXCOORD2;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    o.texcoord1 = v.texcoord1;
                    o.texcoord2 = v.texcoord2;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 node_3792 = _Time + _TimeEditor;
                    float2 node_9997 = (float2(mul(unity_ObjectToWorld, v.vertex).r,mul(unity_ObjectToWorld, v.vertex).b)+(node_3792.g*_Speed)*float2(1,1));
                    float4 _DisplacementTexture_var = tex2Dlod(_DisplacementTexture,float4(TRANSFORM_TEX(node_9997, _DisplacementTexture),0.0,0));
                    v.vertex.xyz += mul( unity_WorldToObject, float4((float3(0.0,(_DisplacementTexture_var.b-0.5),0.0)*_Waveheight),0) ).xyz.rgb;
                }
                float Tessellation(TessVertex v){
                    return _Tesselation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    v.texcoord1 = vi[0].texcoord1*bary.x + vi[1].texcoord1*bary.y + vi[2].texcoord1*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = float3(0,1,0);
                float node_5452 = (_OutwardWavesDomain*(1.0 - i.uv0.g));
                float4 node_1298 = _Time + _TimeEditor;
                float2 node_1658 = float2(i.uv0.r,(_OutwardWavesDomain*(i.uv0.g+(node_1298.g*_OutwardWavesSpeed))));
                float4 _node_1091_var = tex2D(_node_1091,TRANSFORM_TEX(node_1658, _node_1091));
                float node_8200 = saturate((((1.0 - (node_5452-_OtwardsWavesBias))+_node_1091_var.r)-(i.uv0.g+_Edge)));
                clip(floor((_FoamThreshold_copy+node_8200)) - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
                float Pi = 3.141592654;
                float InvPi = 0.31830988618;
///////// Gloss:
                float gloss = _Gloss;
                float perceptualRoughness = 1.0 - _Gloss;
                float roughness = perceptualRoughness * perceptualRoughness;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float LdotH = saturate(dot(lightDirection, halfDirection));
                float3 specularColor = 0.0;
                float specularMonochrome;
                float node_3278 = floor((_FoamThreshold+node_8200));
                float3 node_8413 = lerp(_BackgroundColor.rgb,_FoamColor.rgb,node_3278);
                float3 diffuseColor = node_8413; // Need this for specular when using metallic
                diffuseColor = DiffuseAndSpecularFromMetallic( diffuseColor, specularColor, specularColor, specularMonochrome );
                specularMonochrome = 1.0-specularMonochrome;
                float NdotV = abs(dot( normalDirection, viewDirection ));
                float NdotH = saturate(dot( normalDirection, halfDirection ));
                float VdotH = saturate(dot( viewDirection, halfDirection ));
                float visTerm = SmithJointGGXVisibilityTerm( NdotL, NdotV, roughness );
                float normTerm = GGXTerm(NdotH, roughness);
                float specularPBL = (visTerm*normTerm) * UNITY_PI;
                #ifdef UNITY_COLORSPACE_GAMMA
                    specularPBL = sqrt(max(1e-4h, specularPBL));
                #endif
                specularPBL = max(0, specularPBL * NdotL);
                #if defined(_SPECULARHIGHLIGHTS_OFF)
                    specularPBL = 0.0;
                #endif
                specularPBL *= any(specularColor) ? 1.0 : 0.0;
                float3 directSpecular = attenColor*specularPBL*FresnelTerm(specularColor, LdotH);
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                half fd90 = 0.5 + 2 * LdotH * LdotH * (1-gloss);
                float nlPow5 = Pow5(1-NdotL);
                float nvPow5 = Pow5(1-NdotV);
                float3 directDiffuse = ((1 +(fd90 - 1)*nlPow5) * (1 + (fd90 - 1)*nvPow5) * NdotL) * attenColor;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _TimeEditor;
            uniform sampler2D _DisplacementTexture; uniform float4 _DisplacementTexture_ST;
            uniform float _Speed;
            uniform float _Waveheight;
            uniform float _Tesselation;
            uniform sampler2D _node_1091; uniform float4 _node_1091_ST;
            uniform float _Edge;
            uniform float _OutwardWavesDomain;
            uniform float _OutwardWavesSpeed;
            uniform float _OtwardsWavesBias;
            uniform float _FoamThreshold_copy;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float2 uv1 : TEXCOORD2;
                float2 uv2 : TEXCOORD3;
                float4 posWorld : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                    float2 texcoord1 : TEXCOORD1;
                    float2 texcoord2 : TEXCOORD2;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    o.texcoord1 = v.texcoord1;
                    o.texcoord2 = v.texcoord2;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 node_3792 = _Time + _TimeEditor;
                    float2 node_9997 = (float2(mul(unity_ObjectToWorld, v.vertex).r,mul(unity_ObjectToWorld, v.vertex).b)+(node_3792.g*_Speed)*float2(1,1));
                    float4 _DisplacementTexture_var = tex2Dlod(_DisplacementTexture,float4(TRANSFORM_TEX(node_9997, _DisplacementTexture),0.0,0));
                    v.vertex.xyz += mul( unity_WorldToObject, float4((float3(0.0,(_DisplacementTexture_var.b-0.5),0.0)*_Waveheight),0) ).xyz.rgb;
                }
                float Tessellation(TessVertex v){
                    return _Tesselation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    v.texcoord1 = vi[0].texcoord1*bary.x + vi[1].texcoord1*bary.y + vi[2].texcoord1*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float node_5452 = (_OutwardWavesDomain*(1.0 - i.uv0.g));
                float4 node_1298 = _Time + _TimeEditor;
                float2 node_1658 = float2(i.uv0.r,(_OutwardWavesDomain*(i.uv0.g+(node_1298.g*_OutwardWavesSpeed))));
                float4 _node_1091_var = tex2D(_node_1091,TRANSFORM_TEX(node_1658, _node_1091));
                float node_8200 = saturate((((1.0 - (node_5452-_OtwardsWavesBias))+_node_1091_var.r)-(i.uv0.g+_Edge)));
                clip(floor((_FoamThreshold_copy+node_8200)) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 5.0
            uniform float4 _TimeEditor;
            uniform sampler2D _DisplacementTexture; uniform float4 _DisplacementTexture_ST;
            uniform float _Speed;
            uniform float4 _BackgroundColor;
            uniform float4 _FoamColor;
            uniform float _Gloss;
            uniform float _Waveheight;
            uniform float _Tesselation;
            uniform sampler2D _node_1091; uniform float4 _node_1091_ST;
            uniform float _Edge;
            uniform float _OutwardWavesDomain;
            uniform float _OutwardWavesSpeed;
            uniform float _FoamThreshold;
            uniform float _OtwardsWavesBias;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                    float2 texcoord1 : TEXCOORD1;
                    float2 texcoord2 : TEXCOORD2;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    o.texcoord1 = v.texcoord1;
                    o.texcoord2 = v.texcoord2;
                    return o;
                }
                void displacement (inout VertexInput v){
                    float4 node_3792 = _Time + _TimeEditor;
                    float2 node_9997 = (float2(mul(unity_ObjectToWorld, v.vertex).r,mul(unity_ObjectToWorld, v.vertex).b)+(node_3792.g*_Speed)*float2(1,1));
                    float4 _DisplacementTexture_var = tex2Dlod(_DisplacementTexture,float4(TRANSFORM_TEX(node_9997, _DisplacementTexture),0.0,0));
                    v.vertex.xyz += mul( unity_WorldToObject, float4((float3(0.0,(_DisplacementTexture_var.b-0.5),0.0)*_Waveheight),0) ).xyz.rgb;
                }
                float Tessellation(TessVertex v){
                    return _Tesselation;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    v.texcoord1 = vi[0].texcoord1*bary.x + vi[1].texcoord1*bary.y + vi[2].texcoord1*bary.z;
                    displacement(v);
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : SV_Target {
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float node_5452 = (_OutwardWavesDomain*(1.0 - i.uv0.g));
                float4 node_1298 = _Time + _TimeEditor;
                float2 node_1658 = float2(i.uv0.r,(_OutwardWavesDomain*(i.uv0.g+(node_1298.g*_OutwardWavesSpeed))));
                float4 _node_1091_var = tex2D(_node_1091,TRANSFORM_TEX(node_1658, _node_1091));
                float node_8200 = saturate((((1.0 - (node_5452-_OtwardsWavesBias))+_node_1091_var.r)-(i.uv0.g+_Edge)));
                float node_3278 = floor((_FoamThreshold+node_8200));
                float3 node_8413 = lerp(_BackgroundColor.rgb,_FoamColor.rgb,node_3278);
                float3 diffColor = node_8413;
                float specularMonochrome;
                float3 specColor;
                diffColor = DiffuseAndSpecularFromMetallic( diffColor, 0.0, specColor, specularMonochrome );
                float roughness = 1.0 - _Gloss;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
