.class public Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;
.super Lcom/nofatclips/androidtesting/xml/ElementWrapper;
.source "TestCaseWidget.java"

# interfaces
.implements Lcom/nofatclips/androidtesting/model/WidgetState;


# static fields
.field public static final TAG:Ljava/lang/String; = "WIDGET"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;-><init>(Lorg/w3c/dom/Element;)V

    .line 18
    return-void
.end method

.method public static createWidget(Lcom/nofatclips/androidtesting/guitree/GuiTree;)Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;
    .locals 1
    .parameter "session"

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/GuiTree;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->createWidget(Lorg/w3c/dom/Document;)Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;

    move-result-object v0

    return-object v0
.end method

.method public static createWidget(Lorg/w3c/dom/Document;)Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;
    .locals 2
    .parameter "dom"

    .prologue
    .line 135
    const-string v1, "WIDGET"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 136
    .local v0, el:Lorg/w3c/dom/Element;
    new-instance v1, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;

    invoke-direct {v1, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;-><init>(Lorg/w3c/dom/Element;)V

    return-object v1
.end method


# virtual methods
.method public clone()Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;
    .locals 5

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    const-string v3, "WIDGET"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 145
    .local v0, el:Lorg/w3c/dom/Element;
    new-instance v1, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;

    invoke-direct {v1, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;-><init>(Lorg/w3c/dom/Element;)V

    .line 146
    .local v1, newOne:Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setIdNameType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setUniqueId(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getTextType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setTextType(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getSimpleType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setSimpleType(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getAvailable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setAvailable(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getClickable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setClickable(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getLongClickable()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setLongClickable(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setIndex(I)V

    .line 154
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setValue(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setCount(I)V

    .line 158
    :cond_0
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/nofatclips/androidtesting/model/WidgetState;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->clone()Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;

    move-result-object v0

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
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->clone()Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 163
    instance-of v2, p1, Lcom/nofatclips/androidtesting/model/WidgetState;

    if-nez v2, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 164
    check-cast v0, Lcom/nofatclips/androidtesting/model/WidgetState;

    .line 165
    .local v0, that:Lcom/nofatclips/androidtesting/model/WidgetState;
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/WidgetState;->getId()Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/WidgetState;->getName()Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/WidgetState;->getType()Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getTextType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/WidgetState;->getTextType()Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getCount()I

    move-result v2

    invoke-interface {v0}, Lcom/nofatclips/androidtesting/model/WidgetState;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 165
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected getAvailable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    const-string v0, "available"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getClickable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    const-string v0, "clickable"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    const-string v0, "content_type"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 52
    const-string v0, "count"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 53
    :goto_0
    return v0

    :cond_0
    const-string v0, "count"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 65
    const-string v0, "index"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    :cond_0
    const-string v0, "index"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected getLongClickable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    const-string v0, "long_clickable"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimpleType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const-string v0, "simple_type"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "simple_type"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->guessSimpleType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string v0, "text_type"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "text_type"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->guessType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "unique_id"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "value"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWrapper(Lorg/w3c/dom/Element;)Lcom/nofatclips/androidtesting/model/WrapperInterface;
    .locals 1
    .parameter "e"

    .prologue
    .line 21
    new-instance v0, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;

    invoke-direct {v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;-><init>(Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public guessSimpleType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getType()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, type:Ljava/lang/String;
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    const-string v1, "null"

    .line 199
    :goto_0
    return-object v1

    .line 189
    :cond_0
    const-string v1, "RadioButton"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    const-string v1, "radio"

    goto :goto_0

    .line 191
    :cond_1
    const-string v1, "CheckBox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    const-string v1, "check"

    goto :goto_0

    .line 193
    :cond_2
    const-string v1, "Button"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 194
    const-string v1, "button"

    goto :goto_0

    .line 195
    :cond_3
    const-string v1, "EditText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 196
    const-string v1, "editText"

    goto :goto_0

    .line 197
    :cond_4
    const-string v1, "TabHost"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 198
    const-string v1, "tabHost"

    goto :goto_0

    .line 199
    :cond_5
    const-string v1, ""

    goto :goto_0
.end method

.method public guessType()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x40

    .line 78
    const-string v1, "type"

    invoke-virtual {p0, v1}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, s:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .end local v0           #s:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #s:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 37
    const-string v0, "available"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 38
    :goto_0
    return v0

    :cond_0
    const-string v0, "available"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isClickable()Z
    .locals 2

    .prologue
    .line 42
    const-string v0, "clickable"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    :cond_0
    const-string v0, "clickable"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isLongClickable()Z
    .locals 2

    .prologue
    .line 47
    const-string v0, "long_clickable"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 48
    :goto_0
    return v0

    :cond_0
    const-string v0, "long_clickable"

    invoke-virtual {p0, v0}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAvailable(Ljava/lang/String;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 101
    const-string v0, "available"

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public setClickable(Ljava/lang/String;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 105
    const-string v0, "clickable"

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .parameter "contentType"

    .prologue
    .line 209
    const-string v0, "content_type"

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public setCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 125
    const-string v0, "count"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 83
    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public setIdNameType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "name"
    .parameter "type"

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setId(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, p2}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setName(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, p3}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setType(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public setIndex(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 70
    const-string v0, "index"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public setLongClickable(Ljava/lang/String;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 109
    const-string v0, "long_clickable"

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 93
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public setSimpleType(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 117
    const-string v0, "simple_type"

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public setTextType(Ljava/lang/String;)V
    .locals 1
    .parameter "inputType"

    .prologue
    .line 121
    const-string v0, "text_type"

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 113
    const-string v0, "type"

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public setUniqueId(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 88
    const-string v0, "unique_id"

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 97
    const-string v0, "value"

    invoke-virtual {p0, v0, p1}, Lcom/nofatclips/androidtesting/guitree/TestCaseWidget;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method
