.class public final Lcom/mintegral/msdk/mtgjscommon/mraid/c;
.super Ljava/lang/Object;
.source "MraidUriUtil.java"


# static fields
.field private static volatile a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/mtgjscommon/mraid/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mintegral/msdk/mtgjscommon/mraid/c;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;Ljava/lang/String;)Lcom/mintegral/msdk/mtgjscommon/windvane/a;
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v9, -0x1

    .line 34
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 35
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_114

    const-string v3, "mraid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_114

    .line 37
    new-instance v3, Lcom/mintegral/msdk/mtgjscommon/windvane/a;

    invoke-direct {v3}, Lcom/mintegral/msdk/mtgjscommon/windvane/a;-><init>()V

    .line 38
    const-string v2, "MraidJSBridge"

    iput-object v2, v3, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->d:Ljava/lang/String;

    .line 39
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->e:Ljava/lang/String;

    .line 41
    sget-object v2, Lcom/mintegral/msdk/mtgjscommon/mraid/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_48

    .line 1097
    const-class v2, Lcom/mintegral/msdk/mtgjscommon/mraid/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1098
    array-length v6, v5

    move v2, v0

    :goto_38
    if-ge v2, v6, :cond_48

    aget-object v7, v5, v2

    .line 1099
    sget-object v8, Lcom/mintegral/msdk/mtgjscommon/mraid/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 45
    :cond_48
    sget-object v2, Lcom/mintegral/msdk/mtgjscommon/mraid/c;->b:Ljava/util/ArrayList;

    iget-object v5, v3, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ab

    if-eqz p0, :cond_ab

    .line 46
    invoke-virtual {p0}, Lcom/mintegral/msdk/mtgjscommon/windvane/WindVaneWebView;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    .line 47
    iget-object v4, v3, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->e:Ljava/lang/String;

    .line 1126
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_91

    .line 1129
    sget-object v0, Lcom/mintegral/msdk/mtgjscommon/mraid/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 1130
    sget-object v0, Lcom/mintegral/msdk/mtgjscommon/mraid/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1132
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_91

    .line 1135
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_91

    .line 1136
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_88

    .line 1137
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1138
    :cond_88
    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1140
    sget-object v4, Lcom/mintegral/msdk/mtgjscommon/mraid/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2034
    :cond_91
    :goto_91
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a$a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    .line 49
    iget-object v0, v3, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->e:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 3034
    invoke-static {}, Lcom/mintegral/msdk/mtgjscommon/mraid/a$a;->a()Lcom/mintegral/msdk/mtgjscommon/mraid/a;

    .line 50
    iget-object v0, v3, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->e:Ljava/lang/String;

    const-string v2, "Specified command is not implemented"

    invoke-static {p0, v0, v2}, Lcom/mintegral/msdk/mtgjscommon/mraid/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 68
    :goto_a4
    return-object v0

    .line 1143
    :cond_a5
    sget-object v0, Lcom/mintegral/msdk/mtgjscommon/mraid/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_91

    .line 3072
    :cond_ab
    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v5

    .line 3073
    if-nez v5, :cond_d8

    .line 3074
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 58
    :goto_b5
    :try_start_b5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 59
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_be
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    invoke-virtual {v4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_d1} :catch_d2

    goto :goto_be

    .line 64
    :catch_d2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_d6
    move-object v0, v3

    .line 66
    goto :goto_a4

    .line 3077
    :cond_d8
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    move v2, v0

    .line 3080
    :goto_de
    const/16 v0, 0x26

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 3081
    if-ne v1, v9, :cond_ea

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 3083
    :cond_ea
    const/16 v0, 0x3d

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 3084
    if-gt v0, v1, :cond_f4

    if-ne v0, v9, :cond_f5

    :cond_f4
    move v0, v1

    .line 3088
    :cond_f5
    invoke-virtual {v5, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3089
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3090
    add-int/lit8 v0, v1, 0x1

    .line 3091
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_116

    .line 3093
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_b5

    .line 62
    :cond_10d
    :try_start_10d
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/mintegral/msdk/mtgjscommon/windvane/a;->f:Ljava/lang/String;
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_113} :catch_d2

    goto :goto_d6

    :cond_114
    move-object v0, v1

    .line 68
    goto :goto_a4

    :cond_116
    move v2, v0

    goto :goto_de
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    sget-object v0, Lcom/mintegral/msdk/mtgjscommon/mraid/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 113
    sget-object v0, Lcom/mintegral/msdk/mtgjscommon/mraid/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 161
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 165
    :goto_6
    return-void

    .line 164
    :cond_7
    sget-object v0, Lcom/mintegral/msdk/mtgjscommon/mraid/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6
.end method
