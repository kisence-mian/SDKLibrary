.class public final Lcom/mintegral/msdk/mtgjscommon/windvane/h;
.super Ljava/lang/Object;
.source "WindVaneJsBridge.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/mintegral/msdk/mtgjscommon/windvane/b;


# instance fields
.field protected a:Ljava/util/regex/Pattern;

.field protected b:Ljava/lang/String;

.field protected final c:I

.field protected d:Landroid/content/Context;

.field protected e:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

.field protected f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/h;->c:I

    .line 44
    iput-object p1, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/h;->d:Landroid/content/Context;

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/h;->f:Landroid/os/Handler;

    .line 46
    return-void
.end method


# virtual methods
.method public final a(Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/h;->e:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    .line 56
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 179
    invoke-static {p1}, Lcom/mintegral/msdk/mtgjscommon/windvane/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 180
    invoke-static {p1}, Lcom/mintegral/msdk/mtgjscommon/windvane/j;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1169
    iput-object v0, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/h;->a:Ljava/util/regex/Pattern;

    .line 1174
    iput-object p1, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/h;->b:Ljava/lang/String;

    .line 182
    const/4 v0, 0x1

    .line 184
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final b(Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1134
    :cond_b
    :goto_b
    return-void

    .line 1065
    :cond_c
    if-eqz p1, :cond_9e

    .line 1070
    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/h;->e:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    invoke-static {v1, p1}, Lcom/mintegral/msdk/mtgjscommon/mraid/c;->a(Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;Ljava/lang/String;)Lcom/mintegral/msdk/mtgjscommon/windvane/a;

    move-result-object v1

    .line 1071
    if-eqz v1, :cond_67

    .line 1072
    iget-object v2, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/h;->e:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    iput-object v2, v1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    .line 103
    :goto_1a
    if-eqz v1, :cond_b

    .line 1111
    iget-object v2, v1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    if-nez v2, :cond_a1

    .line 1114
    :goto_20
    if-eqz v0, :cond_b

    .line 1117
    :try_start_22
    iget-object v2, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/h;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 1118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mintegral/msdk/mtgjscommon/a/a;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/mintegral/msdk/mtgjscommon/a/a$c;

    move-result-object v2

    .line 1119
    iget-object v3, v1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->e:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/mintegral/msdk/mtgjscommon/a/a$c;->a(Ljava/lang/String;[Ljava/lang/Class;)Lcom/mintegral/msdk/mtgjscommon/a/a$d;

    move-result-object v2

    .line 1122
    if-eqz v0, :cond_b

    .line 1123
    instance-of v3, v0, Lcom/mintegral/msdk/mtgjscommon/windvane/i;

    if-eqz v3, :cond_b

    .line 1124
    iput-object v0, v1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->b:Ljava/lang/Object;

    .line 1125
    iput-object v2, v1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->c:Lcom/mintegral/msdk/mtgjscommon/a/a$d;

    .line 1126
    iput-object v0, v1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->b:Ljava/lang/Object;

    .line 1138
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1139
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1140
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1141
    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/h;->f:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_61
    .catch Lcom/mintegral/msdk/mtgjscommon/a/a$b$a; {:try_start_22 .. :try_end_61} :catch_62
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_61} :catch_ab

    goto :goto_b

    .line 1131
    :catch_62
    move-exception v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/mtgjscommon/a/a$b$a;->printStackTrace()V

    goto :goto_b

    .line 1076
    :cond_67
    iget-object v1, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/h;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1077
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 1078
    new-instance v1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;

    invoke-direct {v1}, Lcom/mintegral/msdk/mtgjscommon/windvane/a;-><init>()V

    .line 1079
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    .line 1080
    if-lt v3, v4, :cond_84

    .line 1081
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->f:Ljava/lang/String;

    .line 1083
    :cond_84
    if-lt v3, v7, :cond_9e

    .line 1084
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->d:Ljava/lang/String;

    .line 1085
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->g:Ljava/lang/String;

    .line 1086
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->e:Ljava/lang/String;

    .line 1087
    iget-object v2, p0, Lcom/mintegral/msdk/mtgjscommon/windvane/h;->e:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    iput-object v2, v1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    goto/16 :goto_1a

    :cond_9e
    move-object v1, v0

    .line 1092
    goto/16 :goto_1a

    .line 1111
    :cond_a1
    iget-object v0, v1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->a:Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;

    iget-object v2, v1, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->d:Ljava/lang/String;

    .line 1112
    invoke-virtual {v0, v2}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getJsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_20

    .line 1133
    :catch_ab
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 146
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mintegral/msdk/mtgjscommon/windvane/a;

    .line 147
    if-nez v0, :cond_a

    move v0, v1

    .line 164
    :goto_9
    return v0

    .line 151
    :cond_a
    :try_start_a
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_36

    :goto_f
    move v0, v1

    .line 164
    goto :goto_9

    .line 153
    :pswitch_11
    iget-object v3, v0, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->b:Ljava/lang/Object;

    .line 154
    iget-object v4, v0, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->c:Lcom/mintegral/msdk/mtgjscommon/a/a$d;

    .line 155
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    iget-object v7, v0, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->f:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const-string v0, "{}"

    :goto_26
    aput-object v0, v5, v6

    invoke-virtual {v4, v3, v5}, Lcom/mintegral/msdk/mtgjscommon/a/a$d;->a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 157
    goto :goto_9

    .line 155
    :cond_2d
    iget-object v0, v0, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->f:Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2f} :catch_30

    goto :goto_26

    .line 161
    :catch_30
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    .line 151
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_11
    .end packed-switch
.end method
