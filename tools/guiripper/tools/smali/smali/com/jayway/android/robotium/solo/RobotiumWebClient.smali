.class Lcom/jayway/android/robotium/solo/RobotiumWebClient;
.super Landroid/webkit/WebChromeClient;
.source "RobotiumWebClient.java"


# instance fields
.field private inst:Landroid/app/Instrumentation;

.field private originalWebChromeClient:Landroid/webkit/WebChromeClient;

.field private robotiumWebClient:Landroid/webkit/WebChromeClient;

.field webElementCreator:Lcom/jayway/android/robotium/solo/WebElementCreator;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;Lcom/jayway/android/robotium/solo/WebElementCreator;)V
    .locals 1
    .parameter "inst"
    .parameter "webElementCreator"

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 39
    iput-object p1, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->inst:Landroid/app/Instrumentation;

    .line 40
    iput-object p2, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->webElementCreator:Lcom/jayway/android/robotium/solo/WebElementCreator;

    .line 41
    iput-object p0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->robotiumWebClient:Landroid/webkit/WebChromeClient;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/jayway/android/robotium/solo/RobotiumWebClient;)Landroid/webkit/WebChromeClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->robotiumWebClient:Landroid/webkit/WebChromeClient;

    return-object v0
.end method


# virtual methods
.method public enableJavascriptAndSetRobotiumWebClient(Ljava/util/List;Landroid/webkit/WebChromeClient;)V
    .locals 4
    .parameter
    .parameter "originalWebChromeClient"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/webkit/WebView;",
            ">;",
            "Landroid/webkit/WebChromeClient;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, webViews:Ljava/util/List;,"Ljava/util/List<Landroid/webkit/WebView;>;"
    iput-object p2, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 53
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 55
    .local v1, webView:Landroid/webkit/WebView;
    if-eqz v1, :cond_0

    .line 56
    iget-object v2, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->inst:Landroid/app/Instrumentation;

    new-instance v3, Lcom/jayway/android/robotium/solo/RobotiumWebClient$1;

    invoke-direct {v3, p0, v1}, Lcom/jayway/android/robotium/solo/RobotiumWebClient$1;-><init>(Lcom/jayway/android/robotium/solo/RobotiumWebClient;Landroid/webkit/WebView;)V

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 65
    .end local v1           #webView:Landroid/webkit/WebView;
    :cond_1
    return-void
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    .line 115
    :cond_0
    return-void
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1
    .parameter "window"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    .line 122
    :cond_0
    return-void
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter "message"
    .parameter "lineNumber"
    .parameter "sourceID"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 129
    :cond_0
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1
    .parameter "consoleMessage"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    .line 136
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1
    .parameter "view"
    .parameter "isDialog"
    .parameter "isUserGesture"
    .parameter "resultMsg"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 10
    .parameter "url"
    .parameter "databaseIdentifier"
    .parameter "quota"
    .parameter "estimatedDatabaseSize"
    .parameter "totalQuota"
    .parameter "quotaUpdater"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 153
    :cond_0
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    .line 160
    :cond_0
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 1
    .parameter "origin"
    .parameter "callback"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 167
    :cond_0
    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 174
    :cond_0
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    .line 181
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "result"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    .line 197
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6
    .parameter "view"
    .parameter "url"
    .parameter "message"
    .parameter "defaultValue"
    .parameter "r"

    .prologue
    const/4 v0, 0x1

    .line 74
    if-eqz p3, :cond_3

    const-string v1, ";,"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "robotium-finished"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    :cond_0
    const-string v1, "robotium-finished"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->webElementCreator:Lcom/jayway/android/robotium/solo/WebElementCreator;

    invoke-virtual {v1, v0}, Lcom/jayway/android/robotium/solo/WebElementCreator;->setFinished(Z)V

    .line 82
    :goto_0
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->confirm()V

    .line 89
    :cond_1
    :goto_1
    return v0

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->webElementCreator:Lcom/jayway/android/robotium/solo/WebElementCreator;

    invoke-virtual {v1, p3, p1}, Lcom/jayway/android/robotium/solo/WebElementCreator;->createWebElementAndAddInList(Ljava/lang/String;Landroid/webkit/WebView;)V

    goto :goto_0

    .line 86
    :cond_3
    iget-object v1, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    goto :goto_1
.end method

.method public onJsTimeout()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v0

    .line 205
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 213
    :cond_0
    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 6
    .parameter "requiredStorage"
    .parameter "quota"
    .parameter "quotaUpdater"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebChromeClient;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 220
    :cond_0
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "view"
    .parameter "icon"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 227
    :cond_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "title"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 234
    :cond_0
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "precomposed"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    .line 241
    :cond_0
    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    .line 248
    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .parameter "view"
    .parameter "callback"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/jayway/android/robotium/solo/RobotiumWebClient;->originalWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 255
    :cond_0
    return-void
.end method
