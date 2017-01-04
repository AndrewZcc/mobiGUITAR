.class Lcom/jayway/android/robotium/solo/WebUtils;
.super Ljava/lang/Object;
.source "WebUtils.java"


# instance fields
.field private activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

.field private inst:Landroid/app/Instrumentation;

.field originalWebChromeClient:Landroid/webkit/WebChromeClient;

.field robotiumWebCLient:Lcom/jayway/android/robotium/solo/RobotiumWebClient;

.field private viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

.field webElementCreator:Lcom/jayway/android/robotium/solo/WebElementCreator;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;Lcom/jayway/android/robotium/solo/ActivityUtils;Lcom/jayway/android/robotium/solo/ViewFetcher;Lcom/jayway/android/robotium/solo/Sleeper;)V
    .locals 2
    .parameter "instrumentation"
    .parameter "activityUtils"
    .parameter "viewFetcher"
    .parameter "sleeper"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/WebUtils;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 42
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/WebUtils;->inst:Landroid/app/Instrumentation;

    .line 43
    iput-object p2, p0, Lcom/jayway/android/robotium/solo/WebUtils;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    .line 44
    iput-object p3, p0, Lcom/jayway/android/robotium/solo/WebUtils;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    .line 45
    new-instance v0, Lcom/jayway/android/robotium/solo/WebElementCreator;

    invoke-direct {v0, p4}, Lcom/jayway/android/robotium/solo/WebElementCreator;-><init>(Lcom/jayway/android/robotium/solo/Sleeper;)V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/WebUtils;->webElementCreator:Lcom/jayway/android/robotium/solo/WebElementCreator;

    .line 46
    new-instance v0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;

    iget-object v1, p0, Lcom/jayway/android/robotium/solo/WebUtils;->webElementCreator:Lcom/jayway/android/robotium/solo/WebElementCreator;

    invoke-direct {v0, p1, v1}, Lcom/jayway/android/robotium/solo/RobotiumWebClient;-><init>(Landroid/app/Instrumentation;Lcom/jayway/android/robotium/solo/WebElementCreator;)V

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/WebUtils;->robotiumWebCLient:Lcom/jayway/android/robotium/solo/RobotiumWebClient;

    .line 47
    return-void
.end method

.method private createAndReturnTextViewsFromWebElements(Z)Ljava/util/ArrayList;
    .locals 8
    .parameter "javaScriptWasExecuted"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v3, webElementsAsTextViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    if-eqz p1, :cond_1

    .line 72
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/WebUtils;->webElementCreator:Lcom/jayway/android/robotium/solo/WebElementCreator;

    invoke-virtual {v4}, Lcom/jayway/android/robotium/solo/WebElementCreator;->getWebElementsFromWebViews()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jayway/android/robotium/solo/WebElement;

    .line 73
    .local v2, webElement:Lcom/jayway/android/robotium/solo/WebElement;
    invoke-virtual {p0, v2}, Lcom/jayway/android/robotium/solo/WebUtils;->isWebElementSufficientlyShown(Lcom/jayway/android/robotium/solo/WebElement;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    new-instance v1, Lcom/jayway/android/robotium/solo/RobotiumTextView;

    iget-object v4, p0, Lcom/jayway/android/robotium/solo/WebUtils;->inst:Landroid/app/Instrumentation;

    invoke-virtual {v4}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Lcom/jayway/android/robotium/solo/WebElement;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/jayway/android/robotium/solo/WebElement;->getLocationX()I

    move-result v6

    invoke-virtual {v2}, Lcom/jayway/android/robotium/solo/WebElement;->getLocationY()I

    move-result v7

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/jayway/android/robotium/solo/RobotiumTextView;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    .line 75
    .local v1, textView:Lcom/jayway/android/robotium/solo/RobotiumTextView;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #textView:Lcom/jayway/android/robotium/solo/RobotiumTextView;
    .end local v2           #webElement:Lcom/jayway/android/robotium/solo/WebElement;
    :cond_1
    return-object v3
.end method

.method private executeJavaScript(Lcom/jayway/android/robotium/solo/By;)Z
    .locals 2
    .parameter "by"

    .prologue
    .line 210
    instance-of v0, p1, Lcom/jayway/android/robotium/solo/By$Id;

    if-eqz v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jayway/android/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jayway/android/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    move-result v0

    .line 231
    :goto_0
    return v0

    .line 213
    :cond_0
    instance-of v0, p1, Lcom/jayway/android/robotium/solo/By$Xpath;

    if-eqz v0, :cond_1

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xpath(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jayway/android/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jayway/android/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 216
    :cond_1
    instance-of v0, p1, Lcom/jayway/android/robotium/solo/By$CssSelector;

    if-eqz v0, :cond_2

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cssSelector(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jayway/android/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jayway/android/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 219
    :cond_2
    instance-of v0, p1, Lcom/jayway/android/robotium/solo/By$Name;

    if-eqz v0, :cond_3

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jayway/android/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jayway/android/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 222
    :cond_3
    instance-of v0, p1, Lcom/jayway/android/robotium/solo/By$ClassName;

    if-eqz v0, :cond_4

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "className(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jayway/android/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jayway/android/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 225
    :cond_4
    instance-of v0, p1, Lcom/jayway/android/robotium/solo/By$Text;

    if-eqz v0, :cond_5

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "textContent(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jayway/android/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jayway/android/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 228
    :cond_5
    instance-of v0, p1, Lcom/jayway/android/robotium/solo/By$TagName;

    if-eqz v0, :cond_6

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tagName(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jayway/android/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jayway/android/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 231
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private executeJavaScriptFunction(Ljava/lang/String;)Z
    .locals 6
    .parameter "function"

    .prologue
    const/4 v2, 0x0

    .line 242
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/WebUtils;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    iget-object v4, p0, Lcom/jayway/android/robotium/solo/WebUtils;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    const-class v5, Landroid/webkit/WebView;

    invoke-virtual {v4, v5}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getFreshestView(Ljava/util/ArrayList;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 244
    .local v1, webView:Landroid/webkit/WebView;
    if-nez v1, :cond_0

    .line 257
    :goto_0
    return v2

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/jayway/android/robotium/solo/WebUtils;->prepareForStartOfJavascriptExecution()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, javaScript:Ljava/lang/String;
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/WebUtils;->activityUtils:Lcom/jayway/android/robotium/solo/ActivityUtils;

    invoke-virtual {v3, v2}, Lcom/jayway/android/robotium/solo/ActivityUtils;->getCurrentActivity(Z)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/jayway/android/robotium/solo/WebUtils$1;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/jayway/android/robotium/solo/WebUtils$1;-><init>(Lcom/jayway/android/robotium/solo/WebUtils;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 257
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getCurrentWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 7

    .prologue
    .line 153
    const/4 v1, 0x0

    .line 155
    .local v1, currentWebChromeClient:Landroid/webkit/WebChromeClient;
    iget-object v4, p0, Lcom/jayway/android/robotium/solo/WebUtils;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    iget-object v5, p0, Lcom/jayway/android/robotium/solo/WebUtils;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    const-class v6, Landroid/webkit/WebView;

    invoke-virtual {v5, v6}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getFreshestView(Ljava/util/ArrayList;)Landroid/view/View;

    move-result-object v2

    .line 157
    .local v2, currentWebView:Landroid/view/View;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    .line 159
    :try_start_0
    new-instance v4, Lcom/jayway/android/robotium/solo/Reflect;

    invoke-direct {v4, v2}, Lcom/jayway/android/robotium/solo/Reflect;-><init>(Ljava/lang/Object;)V

    const-string v5, "mProvider"

    invoke-virtual {v4, v5}, Lcom/jayway/android/robotium/solo/Reflect;->field(Ljava/lang/String;)Lcom/jayway/android/robotium/solo/Reflect$FieldRf;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/jayway/android/robotium/solo/Reflect$FieldRf;->out(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 164
    .end local v2           #currentWebView:Landroid/view/View;
    :cond_0
    :goto_0
    :try_start_1
    new-instance v4, Lcom/jayway/android/robotium/solo/Reflect;

    invoke-direct {v4, v2}, Lcom/jayway/android/robotium/solo/Reflect;-><init>(Ljava/lang/Object;)V

    const-string v5, "mCallbackProxy"

    invoke-virtual {v4, v5}, Lcom/jayway/android/robotium/solo/Reflect;->field(Ljava/lang/String;)Lcom/jayway/android/robotium/solo/Reflect$FieldRf;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcom/jayway/android/robotium/solo/Reflect$FieldRf;->out(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 165
    .local v3, mCallbackProxy:Ljava/lang/Object;
    new-instance v4, Lcom/jayway/android/robotium/solo/Reflect;

    invoke-direct {v4, v3}, Lcom/jayway/android/robotium/solo/Reflect;-><init>(Ljava/lang/Object;)V

    const-string v5, "mWebChromeClient"

    invoke-virtual {v4, v5}, Lcom/jayway/android/robotium/solo/Reflect;->field(Ljava/lang/String;)Lcom/jayway/android/robotium/solo/Reflect$FieldRf;

    move-result-object v4

    const-class v5, Landroid/webkit/WebChromeClient;

    invoke-virtual {v4, v5}, Lcom/jayway/android/robotium/solo/Reflect$FieldRf;->out(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/webkit/WebChromeClient;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 168
    .end local v3           #mCallbackProxy:Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 166
    :catch_0
    move-exception v4

    goto :goto_1

    .line 160
    .restart local v2       #currentWebView:Landroid/view/View;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private getJavaScriptAsString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 311
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "RobotiumWeb.js"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 312
    .local v1, fis:Ljava/io/InputStream;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 315
    .local v3, javaScript:Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 316
    .local v2, input:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 317
    .local v4, line:Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 318
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 322
    .end local v2           #input:Ljava/io/BufferedReader;
    .end local v4           #line:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 323
    .local v0, e:Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 321
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #input:Ljava/io/BufferedReader;
    .restart local v4       #line:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 325
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getSufficientlyShownWebElements(Z)Ljava/util/ArrayList;
    .locals 4
    .parameter "javaScriptWasExecuted"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jayway/android/robotium/solo/WebElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v0, currentWebElements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jayway/android/robotium/solo/WebElement;>;"
    if-eqz p1, :cond_1

    .line 117
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/WebUtils;->webElementCreator:Lcom/jayway/android/robotium/solo/WebElementCreator;

    invoke-virtual {v3}, Lcom/jayway/android/robotium/solo/WebElementCreator;->getWebElementsFromWebViews()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jayway/android/robotium/solo/WebElement;

    .line 118
    .local v2, webElement:Lcom/jayway/android/robotium/solo/WebElement;
    invoke-virtual {p0, v2}, Lcom/jayway/android/robotium/solo/WebUtils;->isWebElementSufficientlyShown(Lcom/jayway/android/robotium/solo/WebElement;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #webElement:Lcom/jayway/android/robotium/solo/WebElement;
    :cond_1
    return-object v0
.end method

.method private prepareForStartOfJavascriptExecution()Ljava/lang/String;
    .locals 4

    .prologue
    .line 133
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/WebUtils;->webElementCreator:Lcom/jayway/android/robotium/solo/WebElementCreator;

    invoke-virtual {v1}, Lcom/jayway/android/robotium/solo/WebElementCreator;->prepareForStart()V

    .line 135
    invoke-direct {p0}, Lcom/jayway/android/robotium/solo/WebUtils;->getCurrentWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 137
    .local v0, currentWebChromeClient:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/jayway/android/robotium/solo/RobotiumWebClient;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/jayway/android/robotium/solo/WebUtils;->getCurrentWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v1

    iput-object v1, p0, Lcom/jayway/android/robotium/solo/WebUtils;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/WebUtils;->robotiumWebCLient:Lcom/jayway/android/robotium/solo/RobotiumWebClient;

    iget-object v2, p0, Lcom/jayway/android/robotium/solo/WebUtils;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    const-class v3, Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/jayway/android/robotium/solo/WebUtils;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v1, v2, v3}, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->enableJavascriptAndSetRobotiumWebClient(Ljava/util/List;Landroid/webkit/WebChromeClient;)V

    .line 142
    invoke-direct {p0}, Lcom/jayway/android/robotium/solo/WebUtils;->getJavaScriptAsString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public enterTextIntoWebElement(Lcom/jayway/android/robotium/solo/By;Ljava/lang/String;)V
    .locals 2
    .parameter "by"
    .parameter "text"

    .prologue
    .line 179
    instance-of v0, p1, Lcom/jayway/android/robotium/solo/By$Id;

    if-eqz v0, :cond_1

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enterTextById(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jayway/android/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jayway/android/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    instance-of v0, p1, Lcom/jayway/android/robotium/solo/By$Xpath;

    if-eqz v0, :cond_2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enterTextByXpath(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jayway/android/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jayway/android/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    goto :goto_0

    .line 185
    :cond_2
    instance-of v0, p1, Lcom/jayway/android/robotium/solo/By$CssSelector;

    if-eqz v0, :cond_3

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enterTextByCssSelector(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jayway/android/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jayway/android/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    goto :goto_0

    .line 188
    :cond_3
    instance-of v0, p1, Lcom/jayway/android/robotium/solo/By$Name;

    if-eqz v0, :cond_4

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enterTextByName(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jayway/android/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jayway/android/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 191
    :cond_4
    instance-of v0, p1, Lcom/jayway/android/robotium/solo/By$ClassName;

    if-eqz v0, :cond_5

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enterTextByClassName(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jayway/android/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jayway/android/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 194
    :cond_5
    instance-of v0, p1, Lcom/jayway/android/robotium/solo/By$Text;

    if-eqz v0, :cond_6

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enterTextByTextContent(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jayway/android/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jayway/android/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 197
    :cond_6
    instance-of v0, p1, Lcom/jayway/android/robotium/solo/By$TagName;

    if-eqz v0, :cond_0

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enterTextByTagName(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jayway/android/robotium/solo/By;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jayway/android/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method public getCurrentWebElements()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jayway/android/robotium/solo/WebElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    const-string v1, "allWebElements();"

    invoke-direct {p0, v1}, Lcom/jayway/android/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    move-result v0

    .line 91
    .local v0, javaScriptWasExecuted:Z
    invoke-direct {p0, v0}, Lcom/jayway/android/robotium/solo/WebUtils;->getSufficientlyShownWebElements(Z)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentWebElements(Lcom/jayway/android/robotium/solo/By;)Ljava/util/ArrayList;
    .locals 2
    .parameter "by"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jayway/android/robotium/solo/By;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jayway/android/robotium/solo/WebElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/jayway/android/robotium/solo/WebUtils;->executeJavaScript(Lcom/jayway/android/robotium/solo/By;)Z

    move-result v0

    .line 104
    .local v0, javaScriptWasExecuted:Z
    invoke-direct {p0, v0}, Lcom/jayway/android/robotium/solo/WebUtils;->getSufficientlyShownWebElements(Z)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getTextViewsFromWebView()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    const-string v1, "allTexts();"

    invoke-direct {p0, v1}, Lcom/jayway/android/robotium/solo/WebUtils;->executeJavaScriptFunction(Ljava/lang/String;)Z

    move-result v0

    .line 59
    .local v0, javaScriptWasExecuted:Z
    invoke-direct {p0, v0}, Lcom/jayway/android/robotium/solo/WebUtils;->createAndReturnTextViewsFromWebElements(Z)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public final isWebElementSufficientlyShown(Lcom/jayway/android/robotium/solo/WebElement;)Z
    .locals 6
    .parameter "webElement"

    .prologue
    const/4 v2, 0x1

    .line 268
    iget-object v3, p0, Lcom/jayway/android/robotium/solo/WebUtils;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    iget-object v4, p0, Lcom/jayway/android/robotium/solo/WebUtils;->viewFetcher:Lcom/jayway/android/robotium/solo/ViewFetcher;

    const-class v5, Landroid/webkit/WebView;

    invoke-virtual {v4, v5}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getCurrentViews(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jayway/android/robotium/solo/ViewFetcher;->getFreshestView(Ljava/util/ArrayList;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 269
    .local v0, webView:Landroid/webkit/WebView;
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 271
    .local v1, xyWebView:[I
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 272
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    .line 274
    aget v3, v1, v2

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Lcom/jayway/android/robotium/solo/WebElement;->getLocationY()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 277
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public splitNameByUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "name"

    .prologue
    .line 289
    const-string v6, "(?=\\p{Upper})"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 290
    .local v5, texts:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .local v4, stringToReturn:Ljava/lang/StringBuilder;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 294
    .local v3, string:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 295
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 301
    .end local v3           #string:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
