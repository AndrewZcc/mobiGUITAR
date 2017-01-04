.class public Lit/unina/androidripper/storage/DiskPersistence;
.super Ljava/lang/Object;
.source "DiskPersistence.java"

# interfaces
.implements Lit/unina/androidripper/model/Persistence;
.implements Lit/unina/androidripper/model/ImageStorage;


# instance fields
.field fOut:Ljava/io/FileOutputStream;

.field private fileName:Ljava/lang/String;

.field protected mode:I

.field osw:Ljava/io/OutputStreamWriter;

.field private theSession:Lcom/nofatclips/androidtesting/model/Session;

.field w:Landroid/content/ContextWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object v0, p0, Lit/unina/androidripper/storage/DiskPersistence;->fOut:Ljava/io/FileOutputStream;

    .line 206
    iput-object v0, p0, Lit/unina/androidripper/storage/DiskPersistence;->osw:Ljava/io/OutputStreamWriter;

    .line 207
    iput-object v0, p0, Lit/unina/androidripper/storage/DiskPersistence;->w:Landroid/content/ContextWrapper;

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lit/unina/androidripper/storage/DiskPersistence;->mode:I

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/nofatclips/androidtesting/model/Session;)V
    .locals 0
    .parameter "theSession"

    .prologue
    .line 27
    invoke-direct {p0}, Lit/unina/androidripper/storage/DiskPersistence;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lit/unina/androidripper/storage/DiskPersistence;->setSession(Lcom/nofatclips/androidtesting/model/Session;)V

    .line 29
    return-void
.end method


# virtual methods
.method public addTrace(Lcom/nofatclips/androidtesting/model/Trace;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 52
    iget-object v0, p0, Lit/unina/androidripper/storage/DiskPersistence;->theSession:Lcom/nofatclips/androidtesting/model/Session;

    invoke-interface {v0, p1}, Lcom/nofatclips/androidtesting/model/Session;->addTrace(Lcom/nofatclips/androidtesting/model/Trace;)V

    .line 53
    return-void
.end method

.method public closeFile()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lit/unina/androidripper/storage/DiskPersistence;->fOut:Ljava/io/FileOutputStream;

    iget-object v1, p0, Lit/unina/androidripper/storage/DiskPersistence;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, v0, v1}, Lit/unina/androidripper/storage/DiskPersistence;->closeFile(Ljava/io/FileOutputStream;Ljava/io/OutputStreamWriter;)V

    .line 146
    return-void
.end method

.method public closeFile(Ljava/io/FileOutputStream;Ljava/io/OutputStreamWriter;)V
    .locals 2
    .parameter "theFile"
    .parameter "theStream"

    .prologue
    .line 150
    :try_start_0
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    :try_start_1
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->close()V

    .line 156
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 151
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    :try_start_3
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->close()V

    .line 156
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 157
    :catch_2
    move-exception v0

    .line 158
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 154
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 155
    :try_start_4
    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->close()V

    .line 156
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 159
    :goto_1
    throw v1

    .line 157
    :catch_3
    move-exception v0

    .line 158
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public closeFile(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .locals 2
    .parameter "theFile"
    .parameter "theStream"

    .prologue
    .line 165
    :try_start_0
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    :try_start_1
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 171
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 176
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 166
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 167
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    :try_start_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 171
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 172
    :catch_2
    move-exception v0

    .line 173
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 169
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 170
    :try_start_4
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 171
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 174
    :goto_1
    throw v1

    .line 172
    :catch_3
    move-exception v0

    .line 173
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public copy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "from"
    .parameter "to"

    .prologue
    .line 125
    const/16 v5, 0x1000

    new-array v0, v5, [B

    .line 128
    .local v0, buffer:[B
    :try_start_0
    iget-object v5, p0, Lit/unina/androidripper/storage/DiskPersistence;->w:Landroid/content/ContextWrapper;

    invoke-virtual {v5, p1}, Landroid/content/ContextWrapper;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 129
    .local v2, in:Ljava/io/FileInputStream;
    iget-object v5, p0, Lit/unina/androidripper/storage/DiskPersistence;->w:Landroid/content/ContextWrapper;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Landroid/content/ContextWrapper;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 130
    .local v4, out:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 132
    .local v3, n:I
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 133
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    .end local v2           #in:Ljava/io/FileInputStream;
    .end local v3           #n:I
    .end local v4           #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 140
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 142
    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return-void

    .line 136
    .restart local v2       #in:Ljava/io/FileInputStream;
    .restart local v3       #n:I
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 137
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 1
    .parameter "fileName"

    .prologue
    .line 114
    iget-object v0, p0, Lit/unina/androidripper/storage/DiskPersistence;->w:Landroid/content/ContextWrapper;

    invoke-virtual {v0, p1}, Landroid/content/ContextWrapper;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 2
    .parameter "filename"

    .prologue
    .line 118
    iget-object v1, p0, Lit/unina/androidripper/storage/DiskPersistence;->w:Landroid/content/ContextWrapper;

    invoke-virtual {v1, p1}, Landroid/content/ContextWrapper;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 119
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method protected generate()Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    const-string v1, ""

    .line 63
    .local v1, graph:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lit/unina/androidripper/storage/DiskPersistence;->theSession:Lcom/nofatclips/androidtesting/model/Session;

    instance-of v2, v2, Lcom/nofatclips/androidtesting/xml/XmlGraph;

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lit/unina/androidripper/storage/DiskPersistence;->theSession:Lcom/nofatclips/androidtesting/model/Session;

    check-cast v2, Lcom/nofatclips/androidtesting/xml/XmlGraph;

    invoke-virtual {v2}, Lcom/nofatclips/androidtesting/xml/XmlGraph;->toXml()Ljava/lang/String;

    move-result-object v1

    .line 75
    :goto_0
    return-object v1

    .line 66
    :cond_0
    iget-object v2, p0, Lit/unina/androidripper/storage/DiskPersistence;->theSession:Lcom/nofatclips/androidtesting/model/Session;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerFactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljavax/xml/transform/TransformerFactoryConfigurationError;
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactoryConfigurationError;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v0           #e:Ljavax/xml/transform/TransformerFactoryConfigurationError;
    :catch_1
    move-exception v0

    .line 73
    .local v0, e:Ljavax/xml/transform/TransformerException;
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lit/unina/androidripper/storage/DiskPersistence;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getSession()Lcom/nofatclips/androidtesting/model/Session;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lit/unina/androidripper/storage/DiskPersistence;->theSession:Lcom/nofatclips/androidtesting/model/Session;

    return-object v0
.end method

.method public imageFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    const-string v0, "jpg"

    return-object v0
.end method

.method public openFile(Ljava/lang/String;)V
    .locals 3
    .parameter "fileName"

    .prologue
    .line 105
    :try_start_0
    iget-object v1, p0, Lit/unina/androidripper/storage/DiskPersistence;->w:Landroid/content/ContextWrapper;

    iget v2, p0, Lit/unina/androidripper/storage/DiskPersistence;->mode:I

    invoke-virtual {v1, p1, v2}, Landroid/content/ContextWrapper;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    iput-object v1, p0, Lit/unina/androidripper/storage/DiskPersistence;->fOut:Ljava/io/FileOutputStream;

    .line 106
    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lit/unina/androidripper/storage/DiskPersistence;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lit/unina/androidripper/storage/DiskPersistence;->osw:Ljava/io/OutputStreamWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public registerListener(Lit/unina/androidripper/model/SaveStateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 178
    return-void
.end method

.method public save()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lit/unina/androidripper/storage/DiskPersistence;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lit/unina/androidripper/storage/DiskPersistence;->save(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method protected save(Ljava/lang/String;)V
    .locals 3
    .parameter "fileName"

    .prologue
    .line 81
    invoke-virtual {p0}, Lit/unina/androidripper/storage/DiskPersistence;->generate()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, graph:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lit/unina/androidripper/storage/DiskPersistence;->openFile(Ljava/lang/String;)V

    .line 86
    :try_start_0
    invoke-virtual {p0, v1}, Lit/unina/androidripper/storage/DiskPersistence;->writeOnFile(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    invoke-virtual {p0}, Lit/unina/androidripper/storage/DiskPersistence;->closeFile()V

    .line 93
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    invoke-virtual {p0}, Lit/unina/androidripper/storage/DiskPersistence;->closeFile()V

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Lit/unina/androidripper/storage/DiskPersistence;->closeFile()V

    throw v2
.end method

.method public saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 7
    .parameter "image"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    const/4 v1, 0x0

    .line 182
    .local v1, fileOutput:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 184
    .local v2, streamWriter:Ljava/io/OutputStreamWriter;
    :try_start_0
    iget-object v4, p0, Lit/unina/androidripper/storage/DiskPersistence;->w:Landroid/content/ContextWrapper;

    const/4 v5, 0x0

    invoke-virtual {v4, p2, v5}, Landroid/content/ContextWrapper;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 185
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v2           #streamWriter:Ljava/io/OutputStreamWriter;
    .local v3, streamWriter:Ljava/io/OutputStreamWriter;
    if-eqz v1, :cond_0

    .line 187
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {p1, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 188
    const-string v4, "androidripper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved image on disk: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    :cond_0
    if-eqz v1, :cond_3

    .line 195
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 196
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    move-object v2, v3

    .line 199
    .end local v3           #streamWriter:Ljava/io/OutputStreamWriter;
    .restart local v2       #streamWriter:Ljava/io/OutputStreamWriter;
    :cond_1
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    if-eqz v1, :cond_1

    .line 195
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 196
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 194
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v1, :cond_2

    .line 195
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 196
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    throw v4

    .line 194
    .end local v2           #streamWriter:Ljava/io/OutputStreamWriter;
    .restart local v3       #streamWriter:Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #streamWriter:Ljava/io/OutputStreamWriter;
    .restart local v2       #streamWriter:Ljava/io/OutputStreamWriter;
    goto :goto_2

    .line 190
    .end local v2           #streamWriter:Ljava/io/OutputStreamWriter;
    .restart local v3       #streamWriter:Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #streamWriter:Ljava/io/OutputStreamWriter;
    .restart local v2       #streamWriter:Ljava/io/OutputStreamWriter;
    goto :goto_1

    .end local v2           #streamWriter:Ljava/io/OutputStreamWriter;
    .restart local v3       #streamWriter:Ljava/io/OutputStreamWriter;
    :cond_3
    move-object v2, v3

    .end local v3           #streamWriter:Ljava/io/OutputStreamWriter;
    .restart local v2       #streamWriter:Ljava/io/OutputStreamWriter;
    goto :goto_0
.end method

.method public setContext(Landroid/app/Activity;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 48
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lit/unina/androidripper/storage/DiskPersistence;->w:Landroid/content/ContextWrapper;

    .line 49
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 32
    iput-object p1, p0, Lit/unina/androidripper/storage/DiskPersistence;->fileName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setSession(Lcom/nofatclips/androidtesting/model/Session;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 36
    iput-object p1, p0, Lit/unina/androidripper/storage/DiskPersistence;->theSession:Lcom/nofatclips/androidtesting/model/Session;

    .line 37
    return-void
.end method

.method public writeOnFile(Ljava/io/OutputStreamWriter;Ljava/lang/String;)V
    .locals 0
    .parameter "output"
    .parameter "graph"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p1, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public writeOnFile(Ljava/lang/String;)V
    .locals 1
    .parameter "graph"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lit/unina/androidripper/storage/DiskPersistence;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, v0, p1}, Lit/unina/androidripper/storage/DiskPersistence;->writeOnFile(Ljava/io/OutputStreamWriter;Ljava/lang/String;)V

    .line 97
    return-void
.end method
