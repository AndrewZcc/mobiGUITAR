.class public Lit/unina/androidripper/model/SessionParams;
.super Ljava/lang/Object;
.source "SessionParams.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x208f1cf0d13064ceL


# instance fields
.field protected values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lit/unina/androidripper/model/SessionParams;->values:Ljava/util/Map;

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "key"
    .parameter "number"

    .prologue
    .line 22
    invoke-direct {p0}, Lit/unina/androidripper/model/SessionParams;-><init>()V

    .line 23
    invoke-virtual {p0, p1, p2}, Lit/unina/androidripper/model/SessionParams;->store(Ljava/lang/String;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .parameter "key"
    .parameter "number"

    .prologue
    .line 27
    invoke-direct {p0}, Lit/unina/androidripper/model/SessionParams;-><init>()V

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lit/unina/androidripper/model/SessionParams;->store(Ljava/lang/String;J)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 17
    invoke-direct {p0}, Lit/unina/androidripper/model/SessionParams;-><init>()V

    .line 18
    invoke-virtual {p0, p1, p2}, Lit/unina/androidripper/model/SessionParams;->store(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 32
    iget-object v0, p0, Lit/unina/androidripper/model/SessionParams;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 36
    iget-object v0, p0, Lit/unina/androidripper/model/SessionParams;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .parameter "key"

    .prologue
    .line 40
    iget-object v0, p0, Lit/unina/androidripper/model/SessionParams;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 44
    iget-object v0, p0, Lit/unina/androidripper/model/SessionParams;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public store(Lit/unina/androidripper/model/SessionParams;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 60
    iget-object v0, p0, Lit/unina/androidripper/model/SessionParams;->values:Ljava/util/Map;

    iget-object v1, p1, Lit/unina/androidripper/model/SessionParams;->values:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 61
    return-void
.end method

.method public store(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "number"

    .prologue
    .line 52
    iget-object v0, p0, Lit/unina/androidripper/model/SessionParams;->values:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public store(Ljava/lang/String;J)V
    .locals 2
    .parameter "key"
    .parameter "number"

    .prologue
    .line 56
    iget-object v0, p0, Lit/unina/androidripper/model/SessionParams;->values:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public store(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 48
    iget-object v0, p0, Lit/unina/androidripper/model/SessionParams;->values:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method
