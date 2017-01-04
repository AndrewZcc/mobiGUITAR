.class public Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;
.super Ljava/util/HashMap;
.source "ValuesCache.java"

# interfaces
.implements Lit/unina/androidripper/model/SaveStateListener;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "[",
        "Ljava/lang/String;",
        ">;",
        "Lit/unina/androidripper/model/SaveStateListener;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final ACTOR_NAME:Ljava/lang/String; = "ValuesCache"

.field public static FILE_NAME:Ljava/lang/String; = null

.field private static context:Landroid/content/Context; = null

.field private static final serialVersionUID:J = 0x1e240L

.field private static singletonInstance:Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    const-string v0, "valuesCache.obj"

    sput-object v0, Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;->FILE_NAME:Ljava/lang/String;

    .line 30
    sput-object v1, Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;->context:Landroid/content/Context;

    .line 31
    sput-object v1, Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;->singletonInstance:Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 77
    invoke-static {p0}, Lit/unina/androidripper/storage/PersistenceFactory;->registerForSavingState(Lit/unina/androidripper/model/SaveStateListener;)V

    .line 78
    return-void
.end method

.method public static getInstance()Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;->singletonInstance:Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 40
    sget-object v0, Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;->singletonInstance:Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 42
    sput-object p0, Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;->context:Landroid/content/Context;

    .line 43
    new-instance v0, Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;

    invoke-direct {v0}, Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;-><init>()V

    sput-object v0, Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;->singletonInstance:Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;

    .line 46
    :cond_0
    sget-object v0, Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;->singletonInstance:Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;

    return-object v0
.end method


# virtual methods
.method public getListenerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "ValuesCache"

    return-object v0
.end method

.method public loadCache(Ljava/lang/String;)V
    .locals 8
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    sget-object v6, Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;->context:Landroid/content/Context;

    if-nez v6, :cond_0

    .line 109
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "ValuesCache : initialization needed!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 111
    :cond_0
    const/4 v1, 0x0

    .line 112
    .local v1, fileIn:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 115
    .local v3, in:Ljava/io/ObjectInputStream;
    :try_start_0
    sget-object v6, Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;->context:Landroid/content/Context;

    invoke-virtual {v6, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 116
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 117
    .end local v3           #in:Ljava/io/ObjectInputStream;
    .local v4, in:Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;

    .line 118
    .local v5, vCache:Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 119
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_a

    .line 130
    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 131
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    move-object v3, v4

    .line 133
    .end local v4           #in:Ljava/io/ObjectInputStream;
    .end local v5           #vCache:Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    :cond_3
    :goto_1
    return-void

    .line 131
    .end local v3           #in:Ljava/io/ObjectInputStream;
    .restart local v4       #in:Ljava/io/ObjectInputStream;
    .restart local v5       #vCache:Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;
    :catch_0
    move-exception v6

    move-object v3, v4

    .line 132
    .end local v4           #in:Ljava/io/ObjectInputStream;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    goto :goto_1

    .line 120
    .end local v5           #vCache:Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;
    :catch_1
    move-exception v2

    .line 122
    .local v2, i:Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 130
    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 131
    :cond_4
    :goto_3
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    :catch_2
    move-exception v6

    goto :goto_1

    .line 124
    .end local v2           #i:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 126
    .local v0, c:Ljava/lang/ClassNotFoundException;
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 130
    if-eqz v3, :cond_5

    :try_start_8
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 131
    :cond_5
    :goto_5
    if-eqz v1, :cond_3

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_1

    :catch_4
    move-exception v6

    goto :goto_1

    .line 130
    .end local v0           #c:Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v6

    :goto_6
    if-eqz v3, :cond_6

    :try_start_a
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 131
    :cond_6
    :goto_7
    if-eqz v1, :cond_7

    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    :cond_7
    :goto_8
    throw v6

    .line 130
    .end local v3           #in:Ljava/io/ObjectInputStream;
    .restart local v4       #in:Ljava/io/ObjectInputStream;
    .restart local v5       #vCache:Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;
    :catch_5
    move-exception v6

    goto :goto_0

    .end local v4           #in:Ljava/io/ObjectInputStream;
    .end local v5           #vCache:Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;
    .restart local v2       #i:Ljava/io/IOException;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    :catch_6
    move-exception v6

    goto :goto_3

    .end local v2           #i:Ljava/io/IOException;
    .restart local v0       #c:Ljava/lang/ClassNotFoundException;
    :catch_7
    move-exception v6

    goto :goto_5

    .end local v0           #c:Ljava/lang/ClassNotFoundException;
    :catch_8
    move-exception v7

    goto :goto_7

    .line 131
    :catch_9
    move-exception v7

    goto :goto_8

    .line 130
    .end local v3           #in:Ljava/io/ObjectInputStream;
    .restart local v4       #in:Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #in:Ljava/io/ObjectInputStream;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    goto :goto_6

    .line 124
    .end local v3           #in:Ljava/io/ObjectInputStream;
    .restart local v4       #in:Ljava/io/ObjectInputStream;
    :catch_a
    move-exception v0

    move-object v3, v4

    .end local v4           #in:Ljava/io/ObjectInputStream;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    goto :goto_4

    .line 120
    .end local v3           #in:Ljava/io/ObjectInputStream;
    .restart local v4       #in:Ljava/io/ObjectInputStream;
    :catch_b
    move-exception v2

    move-object v3, v4

    .end local v4           #in:Ljava/io/ObjectInputStream;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    goto :goto_2
.end method

.method public onLoadingState(Lit/unina/androidripper/model/SessionParams;)V
    .locals 1
    .parameter "sessionParams"

    .prologue
    .line 100
    :try_start_0
    sget-object v0, Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;->FILE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;->loadCache(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSavingState()Lit/unina/androidripper/model/SessionParams;
    .locals 1

    .prologue
    .line 89
    :try_start_0
    sget-object v0, Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;->FILE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;->saveCache(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    new-instance v0, Lit/unina/androidripper/model/SessionParams;

    invoke-direct {v0}, Lit/unina/androidripper/model/SessionParams;-><init>()V

    return-object v0

    .line 91
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public put(ILjava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;->put(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "incorrectValue"
    .parameter "correctValue"

    .prologue
    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 56
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 57
    .local v0, strings:[Ljava/lang/String;
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 58
    invoke-virtual {p0, p1, v0}, Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "key"
    .parameter "incorrectValue"
    .parameter "correctValue"

    .prologue
    .line 68
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 69
    .local v0, strings:[Ljava/lang/String;
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 70
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 71
    invoke-virtual {p0, p1, v0}, Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public saveCache(Ljava/lang/String;)V
    .locals 7
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    sget-object v4, Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;->context:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 138
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "ValuesCache : initialization needed!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 140
    :cond_0
    const/4 v1, 0x0

    .line 141
    .local v1, fileOutput:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 143
    .local v2, streamWriter:Ljava/io/ObjectOutputStream;
    :try_start_0
    sget-object v4, Lit/unina/androidripper/planning/interactors/values_cache/ValuesCache;->context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 144
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    .end local v2           #streamWriter:Ljava/io/ObjectOutputStream;
    .local v3, streamWriter:Ljava/io/ObjectOutputStream;
    if-eqz v1, :cond_1

    .line 146
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 147
    const-string v4, "androidripper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved values cache on disk: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7

    .line 153
    :cond_1
    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 154
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    move-object v2, v3

    .line 156
    .end local v3           #streamWriter:Ljava/io/ObjectOutputStream;
    .restart local v2       #streamWriter:Ljava/io/ObjectOutputStream;
    :cond_4
    :goto_1
    return-void

    .line 154
    .end local v2           #streamWriter:Ljava/io/ObjectOutputStream;
    .restart local v3       #streamWriter:Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 155
    .end local v3           #streamWriter:Ljava/io/ObjectOutputStream;
    .restart local v2       #streamWriter:Ljava/io/ObjectOutputStream;
    goto :goto_1

    .line 149
    :catch_1
    move-exception v0

    .line 151
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 153
    if-eqz v2, :cond_5

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 154
    :cond_5
    :goto_3
    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    :catch_2
    move-exception v4

    goto :goto_1

    .line 153
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v2, :cond_6

    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 154
    :cond_6
    :goto_5
    if-eqz v1, :cond_7

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :cond_7
    :goto_6
    throw v4

    .line 153
    .end local v2           #streamWriter:Ljava/io/ObjectOutputStream;
    .restart local v3       #streamWriter:Ljava/io/ObjectOutputStream;
    :catch_3
    move-exception v4

    goto :goto_0

    .end local v3           #streamWriter:Ljava/io/ObjectOutputStream;
    .restart local v0       #e:Ljava/io/FileNotFoundException;
    .restart local v2       #streamWriter:Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v4

    goto :goto_3

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v5

    goto :goto_5

    .line 154
    :catch_6
    move-exception v5

    goto :goto_6

    .line 153
    .end local v2           #streamWriter:Ljava/io/ObjectOutputStream;
    .restart local v3       #streamWriter:Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #streamWriter:Ljava/io/ObjectOutputStream;
    .restart local v2       #streamWriter:Ljava/io/ObjectOutputStream;
    goto :goto_4

    .line 149
    .end local v2           #streamWriter:Ljava/io/ObjectOutputStream;
    .restart local v3       #streamWriter:Ljava/io/ObjectOutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3           #streamWriter:Ljava/io/ObjectOutputStream;
    .restart local v2       #streamWriter:Ljava/io/ObjectOutputStream;
    goto :goto_2
.end method
