.class public abstract Lcom/nofatclips/androidtesting/xml/XmlGraph;
.super Ljava/lang/Object;
.source "XmlGraph.java"


# static fields
.field private static builder:Ljavax/xml/parsers/DocumentBuilder;

.field static validation:Z


# instance fields
.field protected doctype_public:Ljava/lang/String;

.field protected doctype_system:Ljava/lang/String;

.field protected indent:Ljava/lang/String;

.field protected indent_amount:I

.field protected method:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nofatclips/androidtesting/xml/XmlGraph;->validation:Z

    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/nofatclips/androidtesting/xml/XmlGraph;->builder:Ljavax/xml/parsers/DocumentBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/nofatclips/androidtesting/xml/XmlGraph;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "systemId"
    .parameter "publicId"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/nofatclips/androidtesting/xml/XmlGraph;->doctype_system:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/nofatclips/androidtesting/xml/XmlGraph;->doctype_public:Ljava/lang/String;

    .line 86
    const-string v0, "yes"

    iput-object v0, p0, Lcom/nofatclips/androidtesting/xml/XmlGraph;->indent:Ljava/lang/String;

    .line 87
    const/4 v0, 0x4

    iput v0, p0, Lcom/nofatclips/androidtesting/xml/XmlGraph;->indent_amount:I

    .line 88
    const-string v0, "xml"

    iput-object v0, p0, Lcom/nofatclips/androidtesting/xml/XmlGraph;->method:Ljava/lang/String;

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/nofatclips/androidtesting/xml/XmlGraph;->setDoctype(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method protected static getBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 49
    sget-object v2, Lcom/nofatclips/androidtesting/xml/XmlGraph;->builder:Ljavax/xml/parsers/DocumentBuilder;

    instance-of v2, v2, Ljavax/xml/parsers/DocumentBuilder;

    if-eqz v2, :cond_0

    .line 50
    sget-object v2, Lcom/nofatclips/androidtesting/xml/XmlGraph;->builder:Ljavax/xml/parsers/DocumentBuilder;

    .line 73
    .local v1, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :goto_0
    return-object v2

    .line 51
    .end local v1           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 54
    .restart local v1       #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-static {}, Lcom/nofatclips/androidtesting/xml/XmlGraph;->isValidation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 56
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringElementContentWhitespace(Z)V

    .line 59
    :cond_1
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    sput-object v2, Lcom/nofatclips/androidtesting/xml/XmlGraph;->builder:Ljavax/xml/parsers/DocumentBuilder;

    .line 60
    sget-object v2, Lcom/nofatclips/androidtesting/xml/XmlGraph;->builder:Ljavax/xml/parsers/DocumentBuilder;

    new-instance v3, Lcom/nofatclips/androidtesting/xml/XmlGraph$1;

    invoke-direct {v3}, Lcom/nofatclips/androidtesting/xml/XmlGraph$1;-><init>()V

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    sget-object v2, Lcom/nofatclips/androidtesting/xml/XmlGraph;->builder:Ljavax/xml/parsers/DocumentBuilder;

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    throw v0
.end method

.method public static isValidation()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/nofatclips/androidtesting/xml/XmlGraph;->validation:Z

    return v0
.end method

.method public static setValidation(Z)V
    .locals 0
    .parameter "v"

    .prologue
    .line 81
    sput-boolean p0, Lcom/nofatclips/androidtesting/xml/XmlGraph;->validation:Z

    .line 82
    return-void
.end method


# virtual methods
.method public abstract getDom()Lorg/w3c/dom/Document;
.end method

.method public setDoctype(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "systemId"
    .parameter "publicId"

    .prologue
    .line 31
    iput-object p2, p0, Lcom/nofatclips/androidtesting/xml/XmlGraph;->doctype_public:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/nofatclips/androidtesting/xml/XmlGraph;->doctype_system:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public toXml()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerFactoryConfigurationError;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {p0}, Lcom/nofatclips/androidtesting/xml/XmlGraph;->getDom()Lorg/w3c/dom/Document;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 37
    .local v2, theDom:Ljavax/xml/transform/dom/DOMSource;
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 38
    .local v0, autput:Ljava/io/StringWriter;
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    .line 39
    .local v1, t:Ljavax/xml/transform/Transformer;
    const-string v3, "doctype-system"

    iget-object v4, p0, Lcom/nofatclips/androidtesting/xml/XmlGraph;->doctype_system:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v3, "doctype-public"

    iget-object v4, p0, Lcom/nofatclips/androidtesting/xml/XmlGraph;->doctype_public:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v3, "indent"

    iget-object v4, p0, Lcom/nofatclips/androidtesting/xml/XmlGraph;->indent:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v3, "method"

    iget-object v4, p0, Lcom/nofatclips/androidtesting/xml/XmlGraph;->method:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v3, "{http://xml.apache.org/xslt}indent-amount"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/nofatclips/androidtesting/xml/XmlGraph;->indent_amount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 45
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
