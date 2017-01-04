.class Lcom/jayway/android/robotium/solo/GLRenderWrapper;
.super Ljava/lang/Object;
.source "GLRenderWrapper.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private glVersion:I

.field private height:I

.field private latch:Ljava/util/concurrent/CountDownLatch;

.field private renderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private takeScreenshot:Z

.field private final view:Landroid/opengl/GLSurfaceView;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/opengl/GLSurfaceView;Landroid/opengl/GLSurfaceView$Renderer;Ljava/util/concurrent/CountDownLatch;)V
    .locals 2
    .parameter "view"
    .parameter "renderer"
    .parameter "latch"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jayway/android/robotium/solo/GLRenderWrapper;->takeScreenshot:Z

    .line 43
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/GLRenderWrapper;->view:Landroid/opengl/GLSurfaceView;

    .line 44
    iput-object p2, p0, Lcom/jayway/android/robotium/solo/GLRenderWrapper;->renderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 45
    iput-object p3, p0, Lcom/jayway/android/robotium/solo/GLRenderWrapper;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 47
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/jayway/android/robotium/solo/GLRenderWrapper;->width:I

    .line 48
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/jayway/android/robotium/solo/GLRenderWrapper;->height:I

    .line 50
    new-instance v0, Lcom/jayway/android/robotium/solo/Reflect;

    invoke-direct {v0, p1}, Lcom/jayway/android/robotium/solo/Reflect;-><init>(Ljava/lang/Object;)V

    const-string v1, "mEGLContextClientVersion"

    invoke-virtual {v0, v1}, Lcom/jayway/android/robotium/solo/Reflect;->field(Ljava/lang/String;)Lcom/jayway/android/robotium/solo/Reflect$FieldRf;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/jayway/android/robotium/solo/Reflect$FieldRf;->out(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/jayway/android/robotium/solo/GLRenderWrapper;->glVersion:I

    .line 52
    return-void
.end method

.method private savePixels(IIII)Landroid/graphics/Bitmap;
    .locals 19
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 126
    add-int v2, p2, p4

    mul-int v2, v2, p3

    new-array v9, v2, [I

    .line 127
    .local v9, b:[I
    mul-int v2, p3, p4

    new-array v10, v2, [I

    .line 128
    .local v10, bt:[I
    invoke-static {v9}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v8

    .line 129
    .local v8, ib:Ljava/nio/IntBuffer;
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 130
    const/4 v3, 0x0

    add-int v5, p2, p4

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move/from16 v2, p1

    move/from16 v4, p3

    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 133
    const/4 v11, 0x0

    .local v11, i:I
    const/4 v13, 0x0

    .local v13, k:I
    :goto_0
    move/from16 v0, p4

    if-ge v11, v0, :cond_1

    .line 136
    const/4 v12, 0x0

    .local v12, j:I
    :goto_1
    move/from16 v0, p3

    if-ge v12, v0, :cond_0

    .line 137
    mul-int v2, v11, p3

    add-int/2addr v2, v12

    aget v15, v9, v2

    .line 138
    .local v15, pix:I
    shr-int/lit8 v2, v15, 0x10

    and-int/lit16 v14, v2, 0xff

    .line 139
    .local v14, pb:I
    shl-int/lit8 v2, v15, 0x10

    const/high16 v3, 0xff

    and-int v17, v2, v3

    .line 140
    .local v17, pr:I
    const v2, -0xff0100

    and-int/2addr v2, v15

    or-int v2, v2, v17

    or-int v16, v2, v14

    .line 141
    .local v16, pix1:I
    sub-int v2, p4, v13

    add-int/lit8 v2, v2, -0x1

    mul-int v2, v2, p3

    add-int/2addr v2, v12

    aput v16, v10, v2

    .line 136
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 133
    .end local v14           #pb:I
    .end local v15           #pix:I
    .end local v16           #pix1:I
    .end local v17           #pr:I
    :cond_0
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 145
    .end local v12           #j:I
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v10, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 146
    .local v18, sb:Landroid/graphics/Bitmap;
    return-object v18
.end method

.method private static savePixels(IIIILjavax/microedition/khronos/opengles/GL10;)Landroid/graphics/Bitmap;
    .locals 20
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "gl"

    .prologue
    .line 160
    add-int v2, p1, p3

    mul-int v2, v2, p2

    new-array v10, v2, [I

    .line 161
    .local v10, b:[I
    mul-int v2, p2, p3

    new-array v11, v2, [I

    .line 162
    .local v11, bt:[I
    invoke-static {v10}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v9

    .line 163
    .local v9, ib:Ljava/nio/IntBuffer;
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 164
    const/4 v4, 0x0

    add-int v6, p1, p3

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    move-object/from16 v2, p4

    move/from16 v3, p0

    move/from16 v5, p2

    invoke-interface/range {v2 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 166
    const/4 v12, 0x0

    .local v12, i:I
    const/4 v14, 0x0

    .local v14, k:I
    :goto_0
    move/from16 v0, p3

    if-ge v12, v0, :cond_1

    .line 169
    const/4 v13, 0x0

    .local v13, j:I
    :goto_1
    move/from16 v0, p2

    if-ge v13, v0, :cond_0

    .line 170
    mul-int v2, v12, p2

    add-int/2addr v2, v13

    aget v16, v10, v2

    .line 171
    .local v16, pix:I
    shr-int/lit8 v2, v16, 0x10

    and-int/lit16 v15, v2, 0xff

    .line 172
    .local v15, pb:I
    shl-int/lit8 v2, v16, 0x10

    const/high16 v3, 0xff

    and-int v18, v2, v3

    .line 173
    .local v18, pr:I
    const v2, -0xff0100

    and-int v2, v2, v16

    or-int v2, v2, v18

    or-int v17, v2, v15

    .line 174
    .local v17, pix1:I
    sub-int v2, p3, v14

    add-int/lit8 v2, v2, -0x1

    mul-int v2, v2, p2

    add-int/2addr v2, v13

    aput v17, v11, v2

    .line 169
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 166
    .end local v15           #pb:I
    .end local v16           #pix:I
    .end local v17           #pix1:I
    .end local v18           #pr:I
    :cond_0
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 178
    .end local v13           #j:I
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v11, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 179
    .local v19, sb:Landroid/graphics/Bitmap;
    return-object v19
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/4 v3, 0x0

    .line 83
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/GLRenderWrapper;->renderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-interface {v1, p1}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 84
    iget-boolean v1, p0, Lcom/jayway/android/robotium/solo/GLRenderWrapper;->takeScreenshot:Z

    if-eqz v1, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 87
    .local v0, screenshot:Landroid/graphics/Bitmap;
    iget v1, p0, Lcom/jayway/android/robotium/solo/GLRenderWrapper;->glVersion:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 88
    iget v1, p0, Lcom/jayway/android/robotium/solo/GLRenderWrapper;->width:I

    iget v2, p0, Lcom/jayway/android/robotium/solo/GLRenderWrapper;->height:I

    invoke-direct {p0, v3, v3, v1, v2}, Lcom/jayway/android/robotium/solo/GLRenderWrapper;->savePixels(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 93
    :goto_0
    new-instance v1, Lcom/jayway/android/robotium/solo/Reflect;

    iget-object v2, p0, Lcom/jayway/android/robotium/solo/GLRenderWrapper;->view:Landroid/opengl/GLSurfaceView;

    invoke-direct {v1, v2}, Lcom/jayway/android/robotium/solo/Reflect;-><init>(Ljava/lang/Object;)V

    const-string v2, "mDrawingCache"

    invoke-virtual {v1, v2}, Lcom/jayway/android/robotium/solo/Reflect;->field(Ljava/lang/String;)Lcom/jayway/android/robotium/solo/Reflect$FieldRf;

    move-result-object v1

    const-class v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/jayway/android/robotium/solo/Reflect$FieldRf;->type(Ljava/lang/Class;)Lcom/jayway/android/robotium/solo/Reflect$FieldRf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jayway/android/robotium/solo/Reflect$FieldRf;->in(Ljava/lang/Object;)V

    .line 95
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/GLRenderWrapper;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 96
    iput-boolean v3, p0, Lcom/jayway/android/robotium/solo/GLRenderWrapper;->takeScreenshot:Z

    .line 98
    .end local v0           #screenshot:Landroid/graphics/Bitmap;
    :cond_0
    return-void

    .line 90
    .restart local v0       #screenshot:Landroid/graphics/Bitmap;
    :cond_1
    iget v1, p0, Lcom/jayway/android/robotium/solo/GLRenderWrapper;->width:I

    iget v2, p0, Lcom/jayway/android/robotium/solo/GLRenderWrapper;->height:I

    invoke-static {v3, v3, v1, v2, p1}, Lcom/jayway/android/robotium/solo/GLRenderWrapper;->savePixels(IIIILjavax/microedition/khronos/opengles/GL10;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 71
    iput p2, p0, Lcom/jayway/android/robotium/solo/GLRenderWrapper;->width:I

    .line 72
    iput p3, p0, Lcom/jayway/android/robotium/solo/GLRenderWrapper;->height:I

    .line 73
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/GLRenderWrapper;->renderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-interface {v0, p1, p2, p3}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 74
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/GLRenderWrapper;->renderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-interface {v0, p1, p2}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 62
    return-void
.end method

.method public setLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter "latch"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/GLRenderWrapper;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 114
    return-void
.end method

.method public setTakeScreenshot()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jayway/android/robotium/solo/GLRenderWrapper;->takeScreenshot:Z

    .line 106
    return-void
.end method
