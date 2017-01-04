.class public Lit/unina/android/hardware/intent/RecordVideoIntent;
.super Landroid/app/Activity;
.source "RecordVideoIntent.java"


# static fields
.field public static MY_RESULT:I


# instance fields
.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field public saveUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, -0x1

    sput v0, Lit/unina/android/hardware/intent/RecordVideoIntent;->MY_RESULT:I

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lit/unina/android/hardware/intent/RecordVideoIntent;->saveUri:Landroid/net/Uri;

    .line 161
    new-instance v0, Lit/unina/android/hardware/intent/RecordVideoIntent$1;

    invoke-direct {v0, p0}, Lit/unina/android/hardware/intent/RecordVideoIntent$1;-><init>(Lit/unina/android/hardware/intent/RecordVideoIntent;)V

    iput-object v0, p0, Lit/unina/android/hardware/intent/RecordVideoIntent;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lit/unina/android/hardware/intent/RecordVideoIntent;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Lit/unina/android/hardware/intent/RecordVideoIntent;->returnIntent()V

    return-void
.end method

.method private copyAssetToSD(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "ctx"
    .parameter "filename"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p2}, Lit/unina/android/hardware/intent/RecordVideoIntent;->copyAssetToSD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method private copyAssetToSD(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "ctx"
    .parameter "filename"
    .parameter "newFilename"

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, in:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 105
    .local v2, out:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 106
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/sdcard/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    :try_start_1
    invoke-direct {p0, v1, v3}, Lit/unina/android/hardware/intent/RecordVideoIntent;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 108
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 109
    const/4 v1, 0x0

    .line 110
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 111
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    const/4 v2, 0x0

    .line 116
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    const-string v4, "tag"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method private copyAssetToURI(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .parameter "ctx"
    .parameter "filename"
    .parameter "dest"

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, in:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 122
    .local v2, out:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    .line 124
    invoke-direct {p0, v1, v2}, Lit/unina/android/hardware/intent/RecordVideoIntent;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 125
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 126
    const/4 v1, 0x0

    .line 127
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 128
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    const/4 v2, 0x0

    .line 133
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "tag"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 138
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, read:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 141
    return-void

    .line 139
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method private returnIntent()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method private startMediaScanner()V
    .locals 5

    .prologue
    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lit/unina/android/hardware/intent/RecordVideoIntent;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lit/unina/android/hardware/intent/RecordVideoIntent;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lit/unina/android/hardware/intent/RecordVideoIntent;->sendBroadcast(Landroid/content/Intent;)V

    .line 152
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x7

    const/4 v13, -0x1

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget v10, Lit/unina/android/hardware/intent/RecordVideoIntent;->MY_RESULT:I

    if-ne v10, v13, :cond_2

    .line 35
    invoke-virtual {p0}, Lit/unina/android/hardware/intent/RecordVideoIntent;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 36
    invoke-virtual {p0}, Lit/unina/android/hardware/intent/RecordVideoIntent;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "output"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    iput-object v10, p0, Lit/unina/android/hardware/intent/RecordVideoIntent;->saveUri:Landroid/net/Uri;

    .line 38
    :cond_0
    iget-object v10, p0, Lit/unina/android/hardware/intent/RecordVideoIntent;->saveUri:Landroid/net/Uri;

    if-eqz v10, :cond_1

    .line 40
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8, v12}, Landroid/content/ContentValues;-><init>(I)V

    .line 41
    .local v8, values:Landroid/content/ContentValues;
    const-string v10, "title"

    iget-object v11, p0, Lit/unina/android/hardware/intent/RecordVideoIntent;->saveUri:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v10, "_display_name"

    iget-object v11, p0, Lit/unina/android/hardware/intent/RecordVideoIntent;->saveUri:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v10, "description"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v10, "datetaken"

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v10, "mime_type"

    const-string v11, "video/3gpp"

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v10, "_data"

    iget-object v11, p0, Lit/unina/android/hardware/intent/RecordVideoIntent;->saveUri:Landroid/net/Uri;

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lit/unina/android/hardware/intent/RecordVideoIntent;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "video.3gp"

    iget-object v12, p0, Lit/unina/android/hardware/intent/RecordVideoIntent;->saveUri:Landroid/net/Uri;

    invoke-direct {p0, v10, v11, v12}, Lit/unina/android/hardware/intent/RecordVideoIntent;->copyAssetToURI(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    .line 49
    invoke-virtual {p0}, Lit/unina/android/hardware/intent/RecordVideoIntent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lit/unina/android/hardware/intent/RecordVideoIntent;->saveUri:Landroid/net/Uri;

    invoke-virtual {v10, v11, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Lit/unina/android/hardware/intent/RecordVideoIntent;->saveUri:Landroid/net/Uri;

    .line 78
    :goto_0
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v6, intent:Landroid/content/Intent;
    const-string v10, "output"

    iget-object v11, p0, Lit/unina/android/hardware/intent/RecordVideoIntent;->saveUri:Landroid/net/Uri;

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 80
    const-string v10, "data"

    iget-object v11, p0, Lit/unina/android/hardware/intent/RecordVideoIntent;->saveUri:Landroid/net/Uri;

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 81
    iget-object v10, p0, Lit/unina/android/hardware/intent/RecordVideoIntent;->saveUri:Landroid/net/Uri;

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, v13, v6}, Lit/unina/android/hardware/intent/RecordVideoIntent;->setResult(ILandroid/content/Intent;)V

    .line 83
    invoke-virtual {p0}, Lit/unina/android/hardware/intent/RecordVideoIntent;->finish()V

    .line 90
    .end local v6           #intent:Landroid/content/Intent;
    .end local v8           #values:Landroid/content/ContentValues;
    :goto_1
    invoke-virtual {p0}, Lit/unina/android/hardware/intent/RecordVideoIntent;->finish()V

    .line 91
    return-void

    .line 53
    :cond_1
    const-string v1, "/sdcard/DCIM/Camera"

    .line 54
    .local v1, cameraDirPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, cameraDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 58
    .local v2, dateTaken:J
    const-string v10, "yyyy-MM-dd_kk.mm.ss"

    invoke-static {v10, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, title:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "VID_"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".3gp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, displayName:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, filename:Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8, v12}, Landroid/content/ContentValues;-><init>(I)V

    .line 63
    .restart local v8       #values:Landroid/content/ContentValues;
    const-string v10, "title"

    invoke-virtual {v8, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v10, "_display_name"

    invoke-virtual {v8, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v10, "description"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v10, "datetaken"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 67
    const-string v10, "mime_type"

    const-string v11, "video/3gpp"

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v10, "_data"

    invoke-virtual {v8, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lit/unina/android/hardware/intent/RecordVideoIntent;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "video.3gp"

    invoke-direct {p0, v10, v11}, Lit/unina/android/hardware/intent/RecordVideoIntent;->copyAssetToSD(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    new-instance v10, Ljava/io/File;

    const-string v11, "/sdcard/video.3gp"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 74
    const-string v10, "content://media/external/video/media"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 75
    .local v9, videoTable:Landroid/net/Uri;
    invoke-virtual {p0}, Lit/unina/android/hardware/intent/RecordVideoIntent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v9, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Lit/unina/android/hardware/intent/RecordVideoIntent;->saveUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 87
    .end local v0           #cameraDir:Ljava/io/File;
    .end local v1           #cameraDirPath:Ljava/lang/String;
    .end local v2           #dateTaken:J
    .end local v4           #displayName:Ljava/lang/String;
    .end local v5           #filename:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #values:Landroid/content/ContentValues;
    .end local v9           #videoTable:Landroid/net/Uri;
    :cond_2
    sget v10, Lit/unina/android/hardware/intent/RecordVideoIntent;->MY_RESULT:I

    invoke-virtual {p0, v10}, Lit/unina/android/hardware/intent/RecordVideoIntent;->setResult(I)V

    goto/16 :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 158
    iget-object v0, p0, Lit/unina/android/hardware/intent/RecordVideoIntent;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lit/unina/android/hardware/intent/RecordVideoIntent;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    return-void
.end method
