.class public Lit/unina/androidripper/Prefs;
.super Ljava/lang/Object;
.source "Prefs.java"


# static fields
.field private static mainNode:Ljava/lang/String;

.field private static notFound:Z

.field private static prefs:Ljava/util/prefs/Preferences;


# instance fields
.field private localPrefs:Ljava/util/prefs/Preferences;

.field private resources:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lit/unina/androidripper/Prefs;->notFound:Z

    .line 24
    const-string v0, "it.unina.androidripper"

    sput-object v0, Lit/unina/androidripper/Prefs;->mainNode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 31
    const-class v0, Lit/unina/androidripper/Resources;

    invoke-direct {p0, p1, v0}, Lit/unina/androidripper/Prefs;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lit/unina/androidripper/model/ResourceFile;)V
    .locals 1
    .parameter "node"
    .parameter "resources"

    .prologue
    .line 35
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lit/unina/androidripper/Prefs;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .parameter "node"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lit/unina/androidripper/model/ResourceFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, resources:Ljava/lang/Class;,"Ljava/lang/Class<+Lit/unina/androidripper/model/ResourceFile;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p1}, Lit/unina/androidripper/Prefs;->loadNode(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v0

    iput-object v0, p0, Lit/unina/androidripper/Prefs;->localPrefs:Ljava/util/prefs/Preferences;

    .line 40
    iput-object p2, p0, Lit/unina/androidripper/Prefs;->resources:Ljava/lang/Class;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/util/prefs/Preferences;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lit/unina/androidripper/Prefs;->localPrefs:Ljava/util/prefs/Preferences;

    .line 28
    return-void
.end method

.method public static fromArray(Ljava/lang/reflect/Field;I)Ljava/lang/String;
    .locals 2
    .parameter "parameter"
    .parameter "index"

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMainNode()Ljava/util/prefs/Preferences;
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lit/unina/androidripper/Prefs;->notFound:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    .line 49
    :cond_0
    sget-object v0, Lit/unina/androidripper/Prefs;->prefs:Ljava/util/prefs/Preferences;

    if-nez v0, :cond_1

    .line 50
    invoke-static {}, Lit/unina/androidripper/Prefs;->loadMainNode()V

    .line 52
    :cond_1
    sget-object v0, Lit/unina/androidripper/Prefs;->prefs:Ljava/util/prefs/Preferences;

    goto :goto_0
.end method

.method public static loadMainNode()V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lit/unina/androidripper/Prefs;->mainNode:Ljava/lang/String;

    invoke-static {v0}, Lit/unina/androidripper/Prefs;->loadMainNode(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static loadMainNode(Ljava/lang/String;)V
    .locals 7
    .parameter "node"

    .prologue
    .line 60
    const-string v4, "/data/data/it.unina.androidripper/files/preferences.xml"

    .line 61
    .local v4, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 63
    .local v2, is:Ljava/io/InputStream;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 64
    const-string v5, "androidripper"

    const-string v6, "Preferences file not found."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v5, 0x1

    sput-boolean v5, Lit/unina/androidripper/Prefs;->notFound:Z

    .line 84
    :goto_0
    return-void

    .line 69
    :cond_0
    const-string v5, "androidripper"

    const-string v6, "Preferences file found."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/prefs/InvalidPreferencesFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 72
    .end local v2           #is:Ljava/io/InputStream;
    .local v3, is:Ljava/io/InputStream;
    :try_start_1
    invoke-static {v3}, Ljava/util/prefs/Preferences;->importPreferences(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/prefs/InvalidPreferencesFormatException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 83
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :goto_1
    invoke-static {}, Ljava/util/prefs/Preferences;->userRoot()Ljava/util/prefs/Preferences;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v5

    sput-object v5, Lit/unina/androidripper/Prefs;->prefs:Ljava/util/prefs/Preferences;

    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    .line 75
    .local v1, e1:Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 76
    .end local v1           #e1:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 78
    .local v0, e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 79
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 81
    .local v0, e:Ljava/util/prefs/InvalidPreferencesFormatException;
    :goto_4
    invoke-virtual {v0}, Ljava/util/prefs/InvalidPreferencesFormatException;->printStackTrace()V

    goto :goto_1

    .line 79
    .end local v0           #e:Ljava/util/prefs/InvalidPreferencesFormatException;
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_4

    .line 76
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_3

    .line 73
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static loadNode(Ljava/lang/String;)Ljava/util/prefs/Preferences;
    .locals 3
    .parameter "localNode"

    .prologue
    .line 87
    const-string v0, "androidripper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading node "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {}, Lit/unina/androidripper/Prefs;->getMainNode()Ljava/util/prefs/Preferences;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lit/unina/androidripper/Prefs;->getMainNode()Ljava/util/prefs/Preferences;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/prefs/Preferences;->node(Ljava/lang/String;)Ljava/util/prefs/Preferences;

    move-result-object v0

    goto :goto_0
.end method

.method public static setMainNode(Ljava/lang/String;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 44
    sput-object p0, Lit/unina/androidripper/Prefs;->mainNode:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static updateMainNode()V
    .locals 2

    .prologue
    .line 204
    const-string v0, ""

    const-class v1, Lit/unina/androidripper/Resources;

    invoke-static {v0, v1}, Lit/unina/androidripper/Prefs;->updateNode(Ljava/lang/String;Ljava/lang/Class;)V

    .line 205
    return-void
.end method

.method public static updateNode(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 4
    .parameter "node"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lit/unina/androidripper/model/ResourceFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, resources:Ljava/lang/Class;,"Ljava/lang/Class<+Lit/unina/androidripper/model/ResourceFile;>;"
    const-string v1, "androidripper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating node "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v0, Lit/unina/androidripper/Prefs;

    invoke-direct {v0, p0, p1}, Lit/unina/androidripper/Prefs;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 210
    .local v0, p:Lit/unina/androidripper/Prefs;
    invoke-virtual {v0}, Lit/unina/androidripper/Prefs;->updateResources()V

    .line 211
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/reflect/Field;)Z
    .locals 3
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lit/unina/androidripper/Prefs;->localPrefs:Ljava/util/prefs/Preferences;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/prefs/Preferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/reflect/Field;)I
    .locals 3
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lit/unina/androidripper/Prefs;->localPrefs:Ljava/util/prefs/Preferences;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/prefs/Preferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIntArray(Ljava/lang/reflect/Field;)[I
    .locals 4
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lit/unina/androidripper/Prefs;->getStringArray(Ljava/lang/reflect/Field;)[Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, value:[Ljava/lang/String;
    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 153
    :cond_0
    return-object v1

    .line 149
    :cond_1
    array-length v3, v2

    new-array v1, v3, [I

    .line 150
    .local v1, ret:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 151
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLong(Ljava/lang/reflect/Field;)J
    .locals 4
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lit/unina/androidripper/Prefs;->localPrefs:Ljava/util/prefs/Preferences;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/prefs/Preferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 3
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lit/unina/androidripper/Prefs;->localPrefs:Ljava/util/prefs/Preferences;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/prefs/Preferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringArray(Ljava/lang/reflect/Field;)[Ljava/lang/String;
    .locals 8
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v2, theList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 136
    .local v1, index:I
    const/4 v0, 0x0

    .line 137
    .local v0, found:Z
    :goto_0
    iget-object v6, p0, Lit/unina/androidripper/Prefs;->localPrefs:Ljava/util/prefs/Preferences;

    invoke-static {p1, v1}, Lit/unina/androidripper/Prefs;->fromArray(Ljava/lang/reflect/Field;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/prefs/Preferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, value:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 138
    const/4 v0, 0x1

    .line 139
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    new-array v3, v6, [Ljava/lang/String;

    .line 143
    .local v3, tmp:[Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    :cond_1
    return-object v5
.end method

.method public hasPrefs()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lit/unina/androidripper/Prefs;->localPrefs:Ljava/util/prefs/Preferences;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setArray(Ljava/lang/reflect/Field;)V
    .locals 1
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lit/unina/androidripper/Prefs;->setArray(Ljava/lang/reflect/Field;Ljava/lang/Class;)V

    .line 158
    return-void
.end method

.method protected setArray(Ljava/lang/reflect/Field;Ljava/lang/Class;)V
    .locals 4
    .parameter "parameter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 161
    .local p2, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 162
    .local v0, component:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    invoke-virtual {p0, p1}, Lit/unina/androidripper/Prefs;->getStringArray(Ljava/lang/reflect/Field;)[Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, strings:[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 165
    invoke-virtual {p1, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    .end local v2           #strings:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    invoke-virtual {p0, p1}, Lit/unina/androidripper/Prefs;->getIntArray(Ljava/lang/reflect/Field;)[I

    move-result-object v1

    .line 169
    .local v1, numbers:[I
    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {p1, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public updateResources()V
    .locals 6

    .prologue
    .line 97
    invoke-virtual {p0}, Lit/unina/androidripper/Prefs;->hasPrefs()Z

    move-result v5

    if-nez v5, :cond_1

    .line 110
    :cond_0
    return-void

    .line 98
    :cond_1
    iget-object v5, p0, Lit/unina/androidripper/Prefs;->resources:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 99
    .local v2, f:Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 98
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    :cond_2
    :try_start_0
    invoke-virtual {p0, v2}, Lit/unina/androidripper/Prefs;->updateValue(Ljava/lang/reflect/Field;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 102
    :catch_0
    move-exception v1

    .line 104
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 105
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 107
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method protected updateValue(Ljava/lang/reflect/Field;)V
    .locals 7
    .parameter "parameter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 176
    const-string v4, "androidripper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updating value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 178
    .local v3, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, before:Ljava/lang/String;
    :goto_0
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 180
    invoke-virtual {p0, p1}, Lit/unina/androidripper/Prefs;->getInt(Ljava/lang/reflect/Field;)I

    move-result v4

    invoke-virtual {p1, p1, v4}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 192
    :goto_1
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 193
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_6

    const-string v0, "null"

    .line 194
    .local v0, after:Ljava/lang/String;
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 195
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-nez v4, :cond_7

    .line 196
    const-string v4, "androidripper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updated value of parameter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (default = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .end local v0           #after:Ljava/lang/String;
    .end local v2           #o:Ljava/lang/Object;
    :cond_0
    :goto_3
    return-void

    .line 178
    .end local v1           #before:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 181
    .restart local v1       #before:Ljava/lang/String;
    :cond_2
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 182
    invoke-virtual {p0, p1}, Lit/unina/androidripper/Prefs;->getLong(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    invoke-virtual {p1, p1, v4, v5}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_1

    .line 183
    :cond_3
    const-class v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 184
    invoke-virtual {p0, p1}, Lit/unina/androidripper/Prefs;->getString(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, p1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 185
    :cond_4
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 186
    invoke-virtual {p0, p1}, Lit/unina/androidripper/Prefs;->getBoolean(Ljava/lang/reflect/Field;)Z

    move-result v4

    invoke-virtual {p1, p1, v4}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_1

    .line 187
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    invoke-virtual {p0, p1, v3}, Lit/unina/androidripper/Prefs;->setArray(Ljava/lang/reflect/Field;Ljava/lang/Class;)V

    goto/16 :goto_1

    .line 193
    .restart local v2       #o:Ljava/lang/Object;
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 198
    .restart local v0       #after:Ljava/lang/String;
    :cond_7
    const-string v4, "androidripper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updated values of array parameter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
