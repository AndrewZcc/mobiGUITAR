.class public Lcom/nofatclips/androidtesting/xml/NodeListWrapper;
.super Ljava/lang/Object;
.source "NodeListWrapper.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/nofatclips/androidtesting/model/WrapperInterface;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# static fields
.field static elemento:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lorg/w3c/dom/Element;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aWrapper:Lcom/nofatclips/androidtesting/model/WrapperInterface;

.field private classe:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field costruisci:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<TE;>;"
        }
    .end annotation
.end field

.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/w3c/dom/Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lorg/w3c/dom/Element;

    sput-object v0, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;->elemento:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/nofatclips/androidtesting/model/WrapperInterface;Lcom/nofatclips/androidtesting/model/WrapperInterface;)V
    .locals 1
    .parameter "parent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nofatclips/androidtesting/model/WrapperInterface;",
            "TE;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, this:Lcom/nofatclips/androidtesting/xml/NodeListWrapper;,"Lcom/nofatclips/androidtesting/xml/NodeListWrapper<TE;>;"
    .local p2, wrapper:Lcom/nofatclips/androidtesting/model/WrapperInterface;,"TE;"
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WrapperInterface;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;-><init>(Lorg/w3c/dom/Element;Lcom/nofatclips/androidtesting/model/WrapperInterface;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/nofatclips/androidtesting/model/WrapperInterface;Ljava/lang/Class;)V
    .locals 1
    .parameter "parent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nofatclips/androidtesting/model/WrapperInterface;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, this:Lcom/nofatclips/androidtesting/xml/NodeListWrapper;,"Lcom/nofatclips/androidtesting/xml/NodeListWrapper<TE;>;"
    .local p2, classe:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    invoke-interface {p1}, Lcom/nofatclips/androidtesting/model/WrapperInterface;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;-><init>(Lorg/w3c/dom/Element;Ljava/lang/Class;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/nofatclips/androidtesting/model/WrapperInterface;)V
    .locals 1
    .parameter "parent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "TE;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, this:Lcom/nofatclips/androidtesting/xml/NodeListWrapper;,"Lcom/nofatclips/androidtesting/xml/NodeListWrapper<TE;>;"
    .local p2, wrapper:Lcom/nofatclips/androidtesting/model/WrapperInterface;,"TE;"
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;-><init>(Lorg/w3c/dom/NodeList;Lcom/nofatclips/androidtesting/model/WrapperInterface;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/Class;)V
    .locals 1
    .parameter "parent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, this:Lcom/nofatclips/androidtesting/xml/NodeListWrapper;,"Lcom/nofatclips/androidtesting/xml/NodeListWrapper<TE;>;"
    .local p2, classe:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;-><init>(Lorg/w3c/dom/NodeList;Ljava/lang/Class;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/NodeList;Lcom/nofatclips/androidtesting/model/WrapperInterface;)V
    .locals 1
    .parameter "lista"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            "TE;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/nofatclips/androidtesting/xml/NodeListWrapper;,"Lcom/nofatclips/androidtesting/xml/NodeListWrapper<TE;>;"
    .local p2, wrapper:Lcom/nofatclips/androidtesting/model/WrapperInterface;,"TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/nofatclips/androidtesting/xml/NodeListIterator;

    invoke-direct {v0, p1}, Lcom/nofatclips/androidtesting/xml/NodeListIterator;-><init>(Lorg/w3c/dom/NodeList;)V

    iput-object v0, p0, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;->iterator:Ljava/util/Iterator;

    .line 44
    iput-object p2, p0, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;->aWrapper:Lcom/nofatclips/androidtesting/model/WrapperInterface;

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/NodeList;Ljava/lang/Class;)V
    .locals 5
    .parameter "lista"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, this:Lcom/nofatclips/androidtesting/xml/NodeListWrapper;,"Lcom/nofatclips/androidtesting/xml/NodeListWrapper<TE;>;"
    .local p2, classe:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v1, Lcom/nofatclips/androidtesting/xml/NodeListIterator;

    invoke-direct {v1, p1}, Lcom/nofatclips/androidtesting/xml/NodeListIterator;-><init>(Lorg/w3c/dom/NodeList;)V

    iput-object v1, p0, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;->iterator:Ljava/util/Iterator;

    .line 22
    iput-object p2, p0, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;->classe:Ljava/lang/Class;

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;->classe:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;->elemento:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    iput-object v1, p0, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;->costruisci:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 27
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 28
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 30
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method private wrap(Lorg/w3c/dom/Element;)Lcom/nofatclips/androidtesting/model/WrapperInterface;
    .locals 3
    .parameter "e"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lcom/nofatclips/androidtesting/xml/NodeListWrapper;,"Lcom/nofatclips/androidtesting/xml/NodeListWrapper<TE;>;"
    iget-object v0, p0, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;->aWrapper:Lcom/nofatclips/androidtesting/model/WrapperInterface;

    instance-of v0, v0, Lcom/nofatclips/androidtesting/model/WrapperInterface;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;->aWrapper:Lcom/nofatclips/androidtesting/model/WrapperInterface;

    invoke-interface {v0, p1}, Lcom/nofatclips/androidtesting/model/WrapperInterface;->getWrapper(Lorg/w3c/dom/Element;)Lcom/nofatclips/androidtesting/model/WrapperInterface;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;->classe:Ljava/lang/Class;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;->costruisci:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nofatclips/androidtesting/model/WrapperInterface;

    goto :goto_0

    .line 74
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 49
    .local p0, this:Lcom/nofatclips/androidtesting/xml/NodeListWrapper;,"Lcom/nofatclips/androidtesting/xml/NodeListWrapper<TE;>;"
    iget-object v0, p0, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/nofatclips/androidtesting/model/WrapperInterface;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, this:Lcom/nofatclips/androidtesting/xml/NodeListWrapper;,"Lcom/nofatclips/androidtesting/xml/NodeListWrapper<TE;>;"
    iget-object v3, p0, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;->iterator:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 54
    .local v1, unwrapped:Lorg/w3c/dom/Element;
    const/4 v2, 0x0

    .line 56
    .local v2, wrapped:Lcom/nofatclips/androidtesting/model/WrapperInterface;,"TE;"
    :try_start_0
    invoke-direct {p0, v1}, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;->wrap(Lorg/w3c/dom/Element;)Lcom/nofatclips/androidtesting/model/WrapperInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 61
    :goto_0
    return-object v2

    .line 57
    :catch_0
    move-exception v0

    .line 59
    .local v0, e1:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;->next()Lcom/nofatclips/androidtesting/model/WrapperInterface;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 65
    .local p0, this:Lcom/nofatclips/androidtesting/xml/NodeListWrapper;,"Lcom/nofatclips/androidtesting/xml/NodeListWrapper<TE;>;"
    iget-object v0, p0, Lcom/nofatclips/androidtesting/xml/NodeListWrapper;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 66
    return-void
.end method
