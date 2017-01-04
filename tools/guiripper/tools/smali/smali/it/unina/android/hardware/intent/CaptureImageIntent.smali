.class public Lit/unina/android/hardware/intent/CaptureImageIntent;
.super Landroid/app/Activity;
.source "CaptureImageIntent.java"


# static fields
.field public static MY_RESULT:I


# instance fields
.field saveUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, -0x1

    sput v0, Lit/unina/android/hardware/intent/CaptureImageIntent;->MY_RESULT:I

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lit/unina/android/hardware/intent/CaptureImageIntent;->saveUri:Landroid/net/Uri;

    .line 22
    return-void
.end method


# virtual methods
.method public loadImageFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "ctx"
    .parameter "imageName"

    .prologue
    const/4 v1, 0x0

    .line 98
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 99
    .local v0, in:Ljava/io/InputStream;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 104
    .end local v0           #in:Ljava/io/InputStream;
    :goto_0
    return-object v1

    .line 101
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, -0x1

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget v5, Lit/unina/android/hardware/intent/CaptureImageIntent;->MY_RESULT:I

    if-ne v5, v7, :cond_4

    .line 35
    invoke-virtual {p0}, Lit/unina/android/hardware/intent/CaptureImageIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 36
    invoke-virtual {p0}, Lit/unina/android/hardware/intent/CaptureImageIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "output"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iput-object v5, p0, Lit/unina/android/hardware/intent/CaptureImageIntent;->saveUri:Landroid/net/Uri;

    .line 38
    :cond_0
    iget-object v5, p0, Lit/unina/android/hardware/intent/CaptureImageIntent;->saveUri:Landroid/net/Uri;

    if-eqz v5, :cond_3

    .line 40
    invoke-virtual {p0}, Lit/unina/android/hardware/intent/CaptureImageIntent;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "photo.jpg"

    invoke-virtual {p0, v5, v6}, Lit/unina/android/hardware/intent/CaptureImageIntent;->loadImageFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 42
    .local v3, photo:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 45
    .local v2, outputStream:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Lit/unina/android/hardware/intent/CaptureImageIntent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lit/unina/android/hardware/intent/CaptureImageIntent;->saveUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    .line 46
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x4b

    invoke-virtual {v3, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 47
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 67
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 68
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "output"

    iget-object v6, p0, Lit/unina/android/hardware/intent/CaptureImageIntent;->saveUri:Landroid/net/Uri;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 69
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v1}, Lit/unina/android/hardware/intent/CaptureImageIntent;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 93
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #outputStream:Ljava/io/OutputStream;
    .end local v3           #photo:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lit/unina/android/hardware/intent/CaptureImageIntent;->finish()V

    .line 94
    return-void

    .line 72
    .restart local v2       #outputStream:Ljava/io/OutputStream;
    .restart local v3       #photo:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 74
    .local v0, ex:Ljava/lang/Exception;
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {p0, v5}, Lit/unina/android/hardware/intent/CaptureImageIntent;->setResult(I)V

    .line 75
    invoke-virtual {p0}, Lit/unina/android/hardware/intent/CaptureImageIntent;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_0

    .line 78
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 79
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 80
    :cond_2
    :goto_1
    throw v5

    .line 84
    .end local v2           #outputStream:Ljava/io/OutputStream;
    .end local v3           #photo:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {p0}, Lit/unina/android/hardware/intent/CaptureImageIntent;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "preview.jpg"

    invoke-virtual {p0, v5, v6}, Lit/unina/android/hardware/intent/CaptureImageIntent;->loadImageFromAsset(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 85
    .local v4, preview:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "inline-data"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "data"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v7, v5}, Lit/unina/android/hardware/intent/CaptureImageIntent;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 90
    .end local v4           #preview:Landroid/graphics/Bitmap;
    :cond_4
    sget v5, Lit/unina/android/hardware/intent/CaptureImageIntent;->MY_RESULT:I

    invoke-virtual {p0, v5}, Lit/unina/android/hardware/intent/CaptureImageIntent;->setResult(I)V

    goto :goto_0

    .line 79
    .restart local v2       #outputStream:Ljava/io/OutputStream;
    .restart local v3       #photo:Landroid/graphics/Bitmap;
    :catch_2
    move-exception v6

    goto :goto_1

    .restart local v1       #intent:Landroid/content/Intent;
    :catch_3
    move-exception v5

    goto :goto_0
.end method
