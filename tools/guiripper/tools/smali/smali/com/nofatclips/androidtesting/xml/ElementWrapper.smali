.class public abstract Lcom/nofatclips/androidtesting/xml/ElementWrapper;
.super Ljava/lang/Object;
.source "ElementWrapper.java"

# interfaces
.implements Lcom/nofatclips/androidtesting/model/WrapperInterface;


# static fields
.field protected static t:Ljavax/xml/transform/Transformer;


# instance fields
.field protected element:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/nofatclips/androidtesting/xml/XmlGraph;Ljava/lang/String;)V
    .locals 1
    .parameter "g"
    .parameter "tag"

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/nofatclips/androidtesting/xml/XmlGraph;->getDom()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;)V
    .locals 1
    .parameter "d"
    .parameter "tag"

    .prologue
    .line 33
    invoke-interface {p1, p2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;-><init>(Lorg/w3c/dom/Element;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;->setElement(Lorg/w3c/dom/Element;)V

    .line 26
    return-void
.end method


# virtual methods
.method public appendChild(Lcom/nofatclips/androidtesting/xml/ElementWrapper;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 62
    return-void
.end method

.method public appendChild(Lorg/w3c/dom/Element;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 58
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getElement()Lorg/w3c/dom/Element;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nofatclips/androidtesting/xml/ElementWrapper;->element:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method protected getTransformer()Ljavax/xml/transform/Transformer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;,
            Ljavax/xml/transform/TransformerFactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 72
    sget-object v0, Lcom/nofatclips/androidtesting/xml/ElementWrapper;->t:Ljavax/xml/transform/Transformer;

    instance-of v0, v0, Ljavax/xml/transform/Transformer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nofatclips/androidtesting/xml/ElementWrapper;->t:Ljavax/xml/transform/Transformer;

    .line 74
    :goto_0
    return-object v0

    .line 73
    :cond_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    sput-object v0, Lcom/nofatclips/androidtesting/xml/ElementWrapper;->t:Ljavax/xml/transform/Transformer;

    .line 74
    sget-object v0, Lcom/nofatclips/androidtesting/xml/ElementWrapper;->t:Ljavax/xml/transform/Transformer;

    goto :goto_0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public setElement(Lorg/w3c/dom/Element;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/nofatclips/androidtesting/xml/ElementWrapper;->element:Lorg/w3c/dom/Element;

    .line 38
    return-void
.end method

.method public toXml()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerFactoryConfigurationError;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;->getElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 66
    .local v1, theDom:Ljavax/xml/transform/dom/DOMSource;
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 67
    .local v0, autput:Ljava/io/StringWriter;
    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/xml/ElementWrapper;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v2, v1, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 68
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
