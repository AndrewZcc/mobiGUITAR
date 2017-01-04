.class public Lcom/nofatclips/androidtesting/model/WidgetAdapter;
.super Ljava/lang/Object;
.source "WidgetAdapter.java"

# interfaces
.implements Lcom/nofatclips/androidtesting/model/WidgetState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/nofatclips/androidtesting/model/WidgetState;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/model/WidgetAdapter;->clone()Lcom/nofatclips/androidtesting/model/WidgetState;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public getElement()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, ""

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, ""

    return-object v0
.end method

.method public getSimpleType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, ""

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, ""

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, ""

    return-object v0
.end method

.method public getWrapper(Lorg/w3c/dom/Element;)Lcom/nofatclips/androidtesting/model/WrapperInterface;
    .locals 1
    .parameter "e"

    .prologue
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public isClickable()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public isLongClickable()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public setAvailable(Ljava/lang/String;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 63
    return-void
.end method

.method public setClickable(Ljava/lang/String;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 79
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .parameter "contentType"

    .prologue
    .line 100
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 69
    return-void
.end method

.method public setElement(Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 9
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 40
    return-void
.end method

.method public setLongClickable(Ljava/lang/String;)V
    .locals 0
    .parameter "lc"

    .prologue
    .line 91
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 41
    return-void
.end method

.method public setSimpleType(Ljava/lang/String;)V
    .locals 0
    .parameter "simpleType"

    .prologue
    .line 57
    return-void
.end method

.method public setTextType(Ljava/lang/String;)V
    .locals 0
    .parameter "inputType"

    .prologue
    .line 56
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 42
    return-void
.end method

.method public setUniqueId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 92
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 85
    return-void
.end method
