.class public Lcom/nofatclips/dictionary/ContentTypeDetector;
.super Ljava/lang/Object;
.source "ContentTypeDetector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detect(Lcom/nofatclips/androidtesting/model/WidgetState;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "widget"
    .parameter "txtId"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 92
    invoke-interface {p0}, Lcom/nofatclips/androidtesting/model/WidgetState;->getTextType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 93
    .local v2, type:I
    invoke-interface {p0}, Lcom/nofatclips/androidtesting/model/WidgetState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, nameLowerCase:Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, txtIdLowerCase:Ljava/lang/String;
    :goto_0
    invoke-interface {p0}, Lcom/nofatclips/androidtesting/model/WidgetState;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 97
    .local v3, valueLowerCase:Ljava/lang/String;
    invoke-static {v2}, Lcom/nofatclips/dictionary/ContentTypeDetector;->isText(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Lcom/nofatclips/dictionary/ContentTypeDetector;->isTextURI(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Lcom/nofatclips/dictionary/ContentTypeDetector;->isTextEmailAddress(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Lcom/nofatclips/dictionary/ContentTypeDetector;->isTextPostalAddress(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 99
    :cond_0
    invoke-static {v2}, Lcom/nofatclips/dictionary/ContentTypeDetector;->isTextURI(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 100
    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "http"

    aput-object v5, v4, v6

    const-string v5, "www"

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/nofatclips/dictionary/ContentTypeDetector;->stringContains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 101
    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "site"

    aput-object v5, v4, v6

    const-string v5, "url"

    aput-object v5, v4, v7

    const-string v5, "web"

    aput-object v5, v4, v8

    const-string v5, "sito"

    aput-object v5, v4, v9

    invoke-static {v0, v4}, Lcom/nofatclips/dictionary/ContentTypeDetector;->stringContains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 102
    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "site"

    aput-object v5, v4, v6

    const-string v5, "url"

    aput-object v5, v4, v7

    const-string v5, "web"

    aput-object v5, v4, v8

    const-string v5, "sito"

    aput-object v5, v4, v9

    invoke-static {v1, v4}, Lcom/nofatclips/dictionary/ContentTypeDetector;->stringContains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 105
    :cond_1
    const-string v4, "url"

    .line 161
    :goto_1
    return-object v4

    .line 94
    .end local v1           #txtIdLowerCase:Ljava/lang/String;
    .end local v3           #valueLowerCase:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 108
    .restart local v1       #txtIdLowerCase:Ljava/lang/String;
    .restart local v3       #valueLowerCase:Ljava/lang/String;
    :cond_3
    invoke-static {v2}, Lcom/nofatclips/dictionary/ContentTypeDetector;->isTextEmailAddress(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 109
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "@"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/nofatclips/dictionary/ContentTypeDetector;->stringContains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 110
    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "e-mail"

    aput-object v5, v4, v6

    const-string v5, "email"

    aput-object v5, v4, v7

    invoke-static {v0, v4}, Lcom/nofatclips/dictionary/ContentTypeDetector;->stringContains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 111
    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "e-mail"

    aput-object v5, v4, v6

    const-string v5, "email"

    aput-object v5, v4, v7

    invoke-static {v1, v4}, Lcom/nofatclips/dictionary/ContentTypeDetector;->stringContains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 114
    :cond_4
    const-string v4, "email"

    goto :goto_1

    .line 117
    :cond_5
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "isbn"

    aput-object v5, v4, v6

    invoke-static {v0, v4}, Lcom/nofatclips/dictionary/ContentTypeDetector;->stringContains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 118
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "isbn"

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Lcom/nofatclips/dictionary/ContentTypeDetector;->stringContains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 121
    :cond_6
    const-string v4, "isbn"

    goto :goto_1

    .line 124
    :cond_7
    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "credit"

    aput-object v5, v4, v6

    const-string v5, "card"

    aput-object v5, v4, v7

    invoke-static {v0, v4}, Lcom/nofatclips/dictionary/ContentTypeDetector;->stringContains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 125
    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "credit"

    aput-object v5, v4, v6

    const-string v5, "card"

    aput-object v5, v4, v7

    invoke-static {v1, v4}, Lcom/nofatclips/dictionary/ContentTypeDetector;->stringContains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 128
    :cond_8
    const-string v4, "creditCard"

    goto :goto_1

    .line 130
    :cond_9
    invoke-static {v2}, Lcom/nofatclips/dictionary/ContentTypeDetector;->isTextPostalAddress(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 131
    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "postcode"

    aput-object v5, v4, v6

    const-string v5, "postal"

    aput-object v5, v4, v7

    const-string v5, "zip"

    aput-object v5, v4, v8

    invoke-static {v0, v4}, Lcom/nofatclips/dictionary/ContentTypeDetector;->stringContains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 132
    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "postcode"

    aput-object v5, v4, v6

    const-string v5, "postal"

    aput-object v5, v4, v7

    const-string v5, "zip"

    aput-object v5, v4, v8

    invoke-static {v1, v4}, Lcom/nofatclips/dictionary/ContentTypeDetector;->stringContains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 135
    :cond_a
    const-string v4, "zip"

    goto/16 :goto_1

    .line 138
    :cond_b
    invoke-static {v2}, Lcom/nofatclips/dictionary/ContentTypeDetector;->isNumber(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 140
    invoke-static {v2}, Lcom/nofatclips/dictionary/ContentTypeDetector;->isNumberSigned(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 142
    invoke-static {v2}, Lcom/nofatclips/dictionary/ContentTypeDetector;->isNumberDecimal(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 144
    const-string v4, "numberSignedDecimal"

    goto/16 :goto_1

    .line 148
    :cond_c
    const-string v4, "numberSigned"

    goto/16 :goto_1

    .line 151
    :cond_d
    invoke-static {v2}, Lcom/nofatclips/dictionary/ContentTypeDetector;->isNumberDecimal(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 153
    const-string v4, "numberDecimal"

    goto/16 :goto_1

    .line 157
    :cond_e
    const-string v4, "number"

    goto/16 :goto_1

    .line 161
    :cond_f
    const-string v4, "default"

    goto/16 :goto_1
.end method

.method public static isDatetime(I)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 27
    and-int/lit8 v0, p0, 0xf

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNumber(I)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 19
    and-int/lit8 v0, p0, 0xf

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 20
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNumberDecimal(I)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 51
    invoke-static {p0}, Lcom/nofatclips/dictionary/ContentTypeDetector;->isNumber(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xfff000

    and-int/2addr v0, p0

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_1

    .line 52
    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNumberSigned(I)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/nofatclips/dictionary/ContentTypeDetector;->isNumber(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xfff000

    and-int/2addr v0, p0

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_1

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isPhone(I)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 35
    and-int/lit8 v0, p0, 0xf

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isText(I)Z
    .locals 2
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 11
    and-int/lit8 v1, p0, 0xf

    if-eq v1, v0, :cond_0

    .line 12
    const/4 v0, 0x0

    .line 15
    :cond_0
    return v0
.end method

.method public static isTextEmailAddress(I)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 59
    invoke-static {p0}, Lcom/nofatclips/dictionary/ContentTypeDetector;->isText(I)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit16 v0, p0, 0xff0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 60
    :cond_0
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isTextMultiline(I)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 83
    invoke-static {p0}, Lcom/nofatclips/dictionary/ContentTypeDetector;->isText(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xfff000

    and-int/2addr v0, p0

    const/high16 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 84
    :cond_0
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isTextMultiline(Lcom/nofatclips/androidtesting/model/WidgetState;)Z
    .locals 1
    .parameter "widget"

    .prologue
    .line 166
    invoke-interface {p0}, Lcom/nofatclips/androidtesting/model/WidgetState;->getTextType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/nofatclips/dictionary/ContentTypeDetector;->isTextMultiline(I)Z

    move-result v0

    return v0
.end method

.method public static isTextPostalAddress(I)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/nofatclips/dictionary/ContentTypeDetector;->isText(I)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit16 v0, p0, 0xff0

    const/16 v1, 0x70

    if-eq v0, v1, :cond_1

    .line 68
    :cond_0
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isTextURI(I)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 75
    invoke-static {p0}, Lcom/nofatclips/dictionary/ContentTypeDetector;->isText(I)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit16 v0, p0, 0xff0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static varargs stringContains(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .parameter "string"
    .parameter "strings"

    .prologue
    const/4 v1, 0x0

    .line 171
    if-eqz p0, :cond_0

    .line 173
    array-length v3, p1

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_1

    .line 178
    :cond_0
    :goto_1
    return v1

    .line 173
    :cond_1
    aget-object v0, p1, v2

    .line 174
    .local v0, s:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 175
    const/4 v1, 0x1

    goto :goto_1

    .line 173
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
