.class public final Lcom/mintegral/msdk/mtgjscommon/windvane/g;
.super Ljava/lang/Object;
.source "WindVaneCallJs.java"


# static fields
.field private static a:Lcom/mintegral/msdk/mtgjscommon/windvane/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    new-instance v0, Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    invoke-direct {v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/g;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a:Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static a()Lcom/mintegral/msdk/mtgjscommon/windvane/g;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcom/mintegral/msdk/mtgjscommon/windvane/g;->a:Lcom/mintegral/msdk/mtgjscommon/windvane/g;

    return-object v0
.end method

.method public static a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 60
    const-string v0, "javascript:window.WindVane.fireEvent(\'%s\', \'\');"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_12
    if-eqz p0, :cond_17

    .line 71
    :try_start_14
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_2a
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_17} :catch_2f

    .line 78
    :cond_17
    :goto_17
    return-void

    .line 64
    :cond_18
    invoke-static {p2}, Lcom/mintegral/msdk/mtgjscommon/windvane/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "javascript:window.WindVane.fireEvent(\'%s\',\'%s\');"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 73
    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17

    .line 75
    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_17
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 87
    instance-of v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/a;

    if-eqz v0, :cond_23

    .line 88
    check-cast p0, Lcom/mintegral/msdk/mtgjscommon/windvane/a;

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 91
    const-string v0, "javascript:window.WindVane.onSuccess(%s,\'\');"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->g:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_1a
    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    if-eqz v1, :cond_23

    .line 102
    :try_start_1e
    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_38
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_23} :catch_3d

    .line 110
    :cond_23
    :goto_23
    return-void

    .line 95
    :cond_24
    invoke-static {p1}, Lcom/mintegral/msdk/mtgjscommon/windvane/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string v1, "javascript:window.WindVane.onSuccess(%s,\'%s\');"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->g:Ljava/lang/String;

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 104
    :catch_38
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23

    .line 106
    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_23
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 119
    instance-of v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/a;

    if-eqz v0, :cond_31

    .line 120
    check-cast p0, Lcom/mintegral/msdk/mtgjscommon/windvane/a;

    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 123
    const-string v0, "javascript:window.WindVane.onFailure(%s,\'\');"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->g:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 128
    :goto_19
    const-string v0, "javascript:window.WindVane.onFailure(%s,\'%s\');"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->g:Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    if-eqz v1, :cond_31

    .line 134
    :try_start_2c
    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-virtual {v1, v0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_31} :catch_37
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_31} :catch_3c

    .line 143
    :cond_31
    :goto_31
    return-void

    .line 127
    :cond_32
    invoke-static {p1}, Lcom/mintegral/msdk/mtgjscommon/windvane/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_19

    .line 136
    :catch_37
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_31

    .line 138
    :catch_3c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_31
.end method
