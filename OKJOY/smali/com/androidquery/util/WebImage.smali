.class public Lcom/androidquery/util/WebImage;
.super Landroid/webkit/WebViewClient;
.source "WebImage.java"


# static fields
.field private static final DOUBLE_TAP_TOAST_COUNT:Ljava/lang/String; = "double_tap_toast_count"

.field private static final PREF_FILE:Ljava/lang/String; = "WebViewSettings"

.field private static template:Ljava/lang/String;


# instance fields
.field private color:I

.field private control:Z

.field private progress:Ljava/lang/Object;

.field private url:Ljava/lang/String;

.field private wv:Landroid/webkit/WebView;

.field private zoom:Z


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Object;ZZI)V
    .registers 7
    .param p1, "wv"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "progress"    # Ljava/lang/Object;
    .param p4, "zoom"    # Z
    .param p5, "control"    # Z
    .param p6, "color"    # I

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    .line 72
    iput-object p2, p0, Lcom/androidquery/util/WebImage;->url:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/androidquery/util/WebImage;->progress:Ljava/lang/Object;

    .line 74
    iput-boolean p4, p0, Lcom/androidquery/util/WebImage;->zoom:Z

    .line 75
    iput-boolean p5, p0, Lcom/androidquery/util/WebImage;->control:Z

    .line 76
    iput p6, p0, Lcom/androidquery/util/WebImage;->color:I

    .line 78
    return-void
.end method

.method static synthetic access$0(Lcom/androidquery/util/WebImage;)Landroid/webkit/WebView;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/androidquery/util/WebImage;)V
    .registers 1

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/androidquery/util/WebImage;->setup()V

    return-void
.end method

.method private delaySetup()V
    .registers 5

    .prologue
    .line 125
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    new-instance v1, Lcom/androidquery/util/WebImage$1;

    invoke-direct {v1, p0}, Lcom/androidquery/util/WebImage$1;-><init>(Lcom/androidquery/util/WebImage;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    .line 138
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    const-string v1, "<html></html>"

    const-string v2, "text/html"

    const-string v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    iget v1, p0, Lcom/androidquery/util/WebImage;->color:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 141
    return-void
.end method

.method private static disableZoomControl(Landroid/webkit/WebView;)V
    .registers 7
    .param p0, "wv"    # Landroid/webkit/WebView;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 183
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v1, v3, :cond_9

    .line 188
    :goto_8
    return-void

    .line 185
    :cond_9
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 186
    .local v0, "ws":Landroid/webkit/WebSettings;
    const-string v1, "setDisplayZoomControls"

    new-array v4, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v4, v2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v2

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method

.method private done(Landroid/webkit/WebView;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;

    .prologue
    const/4 v2, 0x0

    .line 158
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->progress:Ljava/lang/Object;

    if-eqz v0, :cond_f

    .line 160
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->progress:Ljava/lang/Object;

    iget-object v1, p0, Lcom/androidquery/util/WebImage;->url:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/androidquery/util/Common;->showProgress(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 163
    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 164
    return-void
.end method

.method private static fixWebviewTip(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 63
    const-string v1, "WebViewSettings"

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 64
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "double_tap_toast_count"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1d

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "double_tap_toast_count"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    :cond_1d
    return-void
.end method

.method private static getSource(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    sget-object v2, Lcom/androidquery/util/WebImage;->template:Ljava/lang/String;

    if-nez v2, :cond_19

    .line 47
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "com/androidquery/util/web_image.html"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 48
    .local v1, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Lcom/androidquery/util/AQUtility;->toBytes(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    sput-object v2, Lcom/androidquery/util/WebImage;->template:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_19} :catch_1c

    .line 55
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_19
    :goto_19
    sget-object v2, Lcom/androidquery/util/WebImage;->template:Ljava/lang/String;

    return-object v2

    .line 49
    :catch_1c
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto :goto_19
.end method

.method private setup()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/androidquery/util/WebImage;->getSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, "source":Ljava/lang/String;
    const-string v0, "@src"

    iget-object v3, p0, Lcom/androidquery/util/WebImage;->url:Ljava/lang/String;

    invoke-virtual {v6, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "@color"

    iget v4, p0, Lcom/androidquery/util/WebImage;->color:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "html":Ljava/lang/String;
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 152
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    iget v1, p0, Lcom/androidquery/util/WebImage;->color:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 155
    return-void
.end method


# virtual methods
.method public load()V
    .registers 6

    .prologue
    const v4, 0x40ff0001

    const/4 v3, 0x1

    .line 84
    iget-object v1, p0, Lcom/androidquery/util/WebImage;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 121
    :goto_12
    return-void

    .line 88
    :cond_13
    iget-object v1, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/androidquery/util/WebImage;->url:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V

    .line 90
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-gt v1, v2, :cond_25

    .line 91
    iget-object v1, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    .line 94
    :cond_25
    iget-object v1, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/androidquery/util/WebImage;->fixWebviewTip(Landroid/content/Context;)V

    .line 97
    iget-object v1, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 98
    .local v0, "ws":Landroid/webkit/WebSettings;
    iget-boolean v1, p0, Lcom/androidquery/util/WebImage;->zoom:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 99
    iget-boolean v1, p0, Lcom/androidquery/util/WebImage;->zoom:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 101
    iget-boolean v1, p0, Lcom/androidquery/util/WebImage;->control:Z

    if-nez v1, :cond_47

    .line 102
    iget-object v1, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    invoke-static {v1}, Lcom/androidquery/util/WebImage;->disableZoomControl(Landroid/webkit/WebView;)V

    .line 105
    :cond_47
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 106
    iget-object v1, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    iget v2, p0, Lcom/androidquery/util/WebImage;->color:I

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 108
    iget-object v1, p0, Lcom/androidquery/util/WebImage;->progress:Ljava/lang/Object;

    if-eqz v1, :cond_5c

    .line 110
    iget-object v1, p0, Lcom/androidquery/util/WebImage;->progress:Ljava/lang/Object;

    iget-object v2, p0, Lcom/androidquery/util/WebImage;->url:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/androidquery/util/Common;->showProgress(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 113
    :cond_5c
    iget-object v1, p0, Lcom/androidquery/util/WebImage;->wv:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWidth()I

    move-result v1

    if-lez v1, :cond_68

    .line 114
    invoke-direct {p0}, Lcom/androidquery/util/WebImage;->setup()V

    goto :goto_12

    .line 116
    :cond_68
    invoke-direct {p0}, Lcom/androidquery/util/WebImage;->delaySetup()V

    goto :goto_12
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/androidquery/util/WebImage;->done(Landroid/webkit/WebView;)V

    .line 169
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/androidquery/util/WebImage;->done(Landroid/webkit/WebView;)V

    .line 174
    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "oldScale"    # F
    .param p3, "newScale"    # F

    .prologue
    .line 179
    return-void
.end method
