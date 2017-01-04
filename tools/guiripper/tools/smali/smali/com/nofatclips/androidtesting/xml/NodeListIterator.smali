.class public Lcom/nofatclips/androidtesting/xml/NodeListIterator;
.super Ljava/lang/Object;
.source "NodeListIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/w3c/dom/Element;",
        ">;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/w3c/dom/Element;",
        ">;"
    }
.end annotation


# instance fields
.field private currentItem:I

.field private items:Lorg/w3c/dom/NodeList;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 10
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nofatclips/androidtesting/xml/NodeListIterator;-><init>(Lorg/w3c/dom/NodeList;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/NodeList;)V
    .locals 1
    .parameter "lista"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nofatclips/androidtesting/xml/NodeListIterator;->items:Lorg/w3c/dom/NodeList;

    .line 14
    invoke-direct {p0, p1}, Lcom/nofatclips/androidtesting/xml/NodeListIterator;->setItems(Lorg/w3c/dom/NodeList;)V

    .line 15
    return-void
.end method

.method private getItems()Lorg/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nofatclips/androidtesting/xml/NodeListIterator;->items:Lorg/w3c/dom/NodeList;

    instance-of v0, v0, Lorg/w3c/dom/NodeList;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/nofatclips/androidtesting/xml/NodeListIterator;->items:Lorg/w3c/dom/NodeList;

    .line 40
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setItems(Lorg/w3c/dom/NodeList;)V
    .locals 1
    .parameter "items"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/nofatclips/androidtesting/xml/NodeListIterator;->items:Lorg/w3c/dom/NodeList;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/nofatclips/androidtesting/xml/NodeListIterator;->currentItem:I

    .line 46
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/nofatclips/androidtesting/xml/NodeListIterator;->getItems()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .line 23
    .local v0, l:I
    iget v1, p0, Lcom/nofatclips/androidtesting/xml/NodeListIterator;->currentItem:I

    if-ge v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/w3c/dom/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    return-object p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/xml/NodeListIterator;->next()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/w3c/dom/Element;
    .locals 3

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/nofatclips/androidtesting/xml/NodeListIterator;->getItems()Lorg/w3c/dom/NodeList;

    move-result-object v1

    iget v2, p0, Lcom/nofatclips/androidtesting/xml/NodeListIterator;->currentItem:I

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 28
    .local v0, trace:Lorg/w3c/dom/Element;
    iget v1, p0, Lcom/nofatclips/androidtesting/xml/NodeListIterator;->currentItem:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nofatclips/androidtesting/xml/NodeListIterator;->currentItem:I

    .line 29
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/nofatclips/androidtesting/xml/NodeListIterator;->currentItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nofatclips/androidtesting/xml/NodeListIterator;->currentItem:I

    .line 35
    return-void
.end method
