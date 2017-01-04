.class public Lcom/jayway/android/robotium/solo/WebElement;
.super Ljava/lang/Object;
.source "WebElement.java"


# instance fields
.field private className:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private locationX:I

.field private locationY:I

.field private name:Ljava/lang/String;

.field private tagName:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "webId"
    .parameter "textContent"
    .parameter "name"
    .parameter "className"
    .parameter "tagName"

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v0, p0, Lcom/jayway/android/robotium/solo/WebElement;->locationX:I

    .line 13
    iput v0, p0, Lcom/jayway/android/robotium/solo/WebElement;->locationY:I

    .line 32
    invoke-virtual {p0, p1}, Lcom/jayway/android/robotium/solo/WebElement;->setId(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/jayway/android/robotium/solo/WebElement;->setTextContent(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, p3}, Lcom/jayway/android/robotium/solo/WebElement;->setName(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p4}, Lcom/jayway/android/robotium/solo/WebElement;->setClassName(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p5}, Lcom/jayway/android/robotium/solo/WebElement;->setTagName(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/WebElement;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/WebElement;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationOnScreen([I)V
    .locals 2
    .parameter "location"

    .prologue
    .line 45
    const/4 v0, 0x0

    iget v1, p0, Lcom/jayway/android/robotium/solo/WebElement;->locationX:I

    aput v1, p1, v0

    .line 46
    const/4 v0, 0x1

    iget v1, p0, Lcom/jayway/android/robotium/solo/WebElement;->locationY:I

    aput v1, p1, v0

    .line 47
    return-void
.end method

.method public getLocationX()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/jayway/android/robotium/solo/WebElement;->locationX:I

    return v0
.end method

.method public getLocationY()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/jayway/android/robotium/solo/WebElement;->locationY:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/WebElement;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/WebElement;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/WebElement;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .parameter "className"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/WebElement;->className:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/WebElement;->id:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setLocationX(I)V
    .locals 0
    .parameter "locationX"

    .prologue
    .line 56
    iput p1, p0, Lcom/jayway/android/robotium/solo/WebElement;->locationX:I

    .line 57
    return-void
.end method

.method public setLocationY(I)V
    .locals 0
    .parameter "locationY"

    .prologue
    .line 66
    iput p1, p0, Lcom/jayway/android/robotium/solo/WebElement;->locationY:I

    .line 67
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/WebElement;->name:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 0
    .parameter "tagName"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/WebElement;->tagName:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0
    .parameter "textContent"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/WebElement;->text:Ljava/lang/String;

    .line 187
    return-void
.end method
