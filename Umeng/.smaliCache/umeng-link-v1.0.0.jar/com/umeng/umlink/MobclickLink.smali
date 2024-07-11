.class public Lcom/umeng/umlink/MobclickLink;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/umlink/MobclickLink;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/umeng/umlink/MobclickLink;->b(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 13

    const-string v0, "url="

    const-string v1, ""

    const-string v2, "\\|"

    const/4 v3, 0x0

    if-nez p0, :cond_f

    :try_start_9
    const-string p0, "context\u53c2\u6570\u4e0d\u80fd\u4e3anull\u3002|\u9700\u8981\u6307\u5b9aApplicationContext\u503c\u3002"

    invoke-static {p0, v3, v2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_f
    sget-object v4, Lcom/umeng/umlink/MobclickLink;->a:Landroid/content/Context;

    if-nez v4, :cond_19

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/umlink/MobclickLink;->a:Landroid/content/Context;

    :cond_19
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p2
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_b9

    :try_start_21
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_2f
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_74

    const-string v0, "&"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3c} :catch_76
    .catchall {:try_start_21 .. :try_end_3c} :catchall_b9

    move-object v4, v1

    const/4 v5, 0x0

    :goto_3e
    if-ge v5, v0, :cond_7b

    :try_start_40
    aget-object v6, p2, v5

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_6f

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_6f

    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "um_from_appkey"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_66

    move-object v1, v6

    goto :goto_6f

    :cond_66
    const-string v7, "_bizType_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_6c} :catch_72
    .catchall {:try_start_40 .. :try_end_6c} :catchall_b9

    if-eqz v7, :cond_6f

    move-object v4, v6

    :cond_6f
    :goto_6f
    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    :catch_72
    move-exception p2

    goto :goto_78

    :cond_74
    move-object v4, v1

    goto :goto_7b

    :catch_76
    move-exception p2

    move-object v4, v1

    :goto_78
    :try_start_78
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7b
    :goto_7b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_b3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_b3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_b3

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "_$!link_id"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "_$!url"

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "_$!scene"

    invoke-interface {p2, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "_$!appkey"

    invoke-interface {p2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "_$!bizType"

    invoke-interface {p2, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/umeng/umlink/MobclickLink;->a:Landroid/content/Context;

    const-string p1, "$$_um_link"

    invoke-static {p0, p1, p2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_b3
    const-string p0, "linkid\u3001url\u3001scene\u53c2\u6570\u4e0d\u80fd\u4e3anull\uff0c\u4e5f\u4e0d\u80fd\u4e3a\u7a7a\u5b57\u7b26\u4e32\u3002|\u5fc5\u987b\u4e3a\u975e\u7a7a\u5b57\u7b26\u4e32\u3002"

    invoke-static {p0, v3, v2}, Lcom/umeng/commonsdk/debug/UMLog;->aq(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_b8
    .catchall {:try_start_78 .. :try_end_b8} :catchall_b9

    return-void

    :catchall_b9
    move-exception p0

    sget-boolean p1, Lcom/umeng/commonsdk/statistics/common/MLog;->DEBUG:Z

    if-eqz p1, :cond_c1

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/Throwable;)V

    :cond_c1
    return-void
.end method

.method public static getInstallParams(Landroid/content/Context;Lcom/umeng/umlink/UMLinkListener;)V
    .registers 9

    const-string v0, "data"

    invoke-static {p0}, Lcom/umeng/umlink/a;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "umlink_install_cache"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7c

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, ""

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_77

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "linkId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    const-string v1, "installParams"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    :cond_54
    const-string v1, "wakeupUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_77

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&_scene_=install"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :cond_77
    invoke-interface {p1, v2, v3}, Lcom/umeng/umlink/UMLinkListener;->onInstall(Ljava/util/HashMap;Landroid/net/Uri;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_7a} :catch_7b

    return-void

    :catch_7b
    move-exception v0

    :cond_7c
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/umlink/MobclickLink$1;

    invoke-direct {v1, p0, p1}, Lcom/umeng/umlink/MobclickLink$1;-><init>(Landroid/content/Context;Lcom/umeng/umlink/UMLinkListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/umeng/umlink/a/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized getUMLinkParam(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 9

    const-class v0, Lcom/umeng/umlink/MobclickLink;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_6
    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_eb
    .catchall {:try_start_6 .. :try_end_e} :catchall_e9

    if-eqz v5, :cond_12

    monitor-exit v0

    return-object v1

    :cond_12
    :try_start_12
    new-instance v5, Lcom/umeng/umlink/b;

    invoke-direct {v5}, Lcom/umeng/umlink/b;-><init>()V

    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getUMId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_23

    iput-object v6, v5, Lcom/umeng/umlink/b;->n:Ljava/lang/String;

    :cond_23
    iput-object v4, v5, Lcom/umeng/umlink/b;->o:Ljava/lang/String;

    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/umeng/umlink/b;->p:Ljava/lang/String;

    const-string v4, "9.3.6"

    iput-object v4, v5, Lcom/umeng/umlink/b;->q:Ljava/lang/String;

    invoke-static {p0}, Lcom/umeng/commonsdk/utils/UMUtils;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/umeng/umlink/b;->r:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/umeng/umlink/b;->s:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v4, v5, Lcom/umeng/umlink/b;->t:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v4, v5, Lcom/umeng/umlink/b;->u:Ljava/lang/String;

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getLocaleInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    aget-object v6, v4, v3

    iput-object v6, v5, Lcom/umeng/umlink/b;->v:Ljava/lang/String;

    aget-object v4, v4, v2

    iput-object v4, v5, Lcom/umeng/umlink/b;->y:Ljava/lang/String;

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/DeviceConfig;->getResolutionArray(Landroid/content/Context;)[I

    move-result-object p0

    aget v4, p0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v5, Lcom/umeng/umlink/b;->x:Ljava/lang/Integer;

    aget p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v5, Lcom/umeng/umlink/b;->w:Ljava/lang/Integer;

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_73} :catch_eb
    .catchall {:try_start_12 .. :try_end_73} :catchall_e9

    :try_start_73
    iget-object v1, v5, Lcom/umeng/umlink/b;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_82

    sget-object v1, Lcom/umeng/umlink/b;->a:Ljava/lang/String;

    iget-object v4, v5, Lcom/umeng/umlink/b;->n:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_82
    sget-object v1, Lcom/umeng/umlink/b;->c:Ljava/lang/String;

    iget-object v4, v5, Lcom/umeng/umlink/b;->p:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/umlink/b;->b:Ljava/lang/String;

    iget-object v4, v5, Lcom/umeng/umlink/b;->o:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/umlink/b;->d:Ljava/lang/String;

    iget-object v4, v5, Lcom/umeng/umlink/b;->q:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/umlink/b;->e:Ljava/lang/String;

    iget-object v4, v5, Lcom/umeng/umlink/b;->r:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/umlink/b;->f:Ljava/lang/String;

    iget-object v4, v5, Lcom/umeng/umlink/b;->s:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/umlink/b;->g:Ljava/lang/String;

    iget-object v4, v5, Lcom/umeng/umlink/b;->t:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/umlink/b;->h:Ljava/lang/String;

    iget-object v4, v5, Lcom/umeng/umlink/b;->u:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/umlink/b;->k:Ljava/lang/String;

    iget-object v4, v5, Lcom/umeng/umlink/b;->x:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/umlink/b;->j:Ljava/lang/String;

    iget-object v4, v5, Lcom/umeng/umlink/b;->w:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/umlink/b;->l:Ljava/lang/String;

    iget-object v4, v5, Lcom/umeng/umlink/b;->y:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/umlink/b;->i:Ljava/lang/String;

    iget-object v4, v5, Lcom/umeng/umlink/b;->v:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/umlink/b;->m:Ljava/lang/String;

    iget-object v4, v5, Lcom/umeng/umlink/b;->z:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/umlink/b;->f:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lcom/umeng/umlink/b;->h:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_e4} :catch_e6
    .catchall {:try_start_73 .. :try_end_e4} :catchall_e9

    monitor-exit v0

    return-object p0

    :catch_e6
    move-exception v1

    move-object v1, p0

    goto :goto_ec

    :catchall_e9
    move-exception p0

    goto :goto_f9

    :catch_eb
    move-exception p0

    :goto_ec
    :try_start_ec
    const-string p0, "umlink"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "[getUMLinkParam] error"

    aput-object v4, v3, v2

    invoke-static {p0, v3}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_f7
    .catchall {:try_start_ec .. :try_end_f7} :catchall_e9

    monitor-exit v0

    return-object v1

    :goto_f9
    monitor-exit v0

    throw p0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "1.0.0"

    return-object v0
.end method

.method public static handleUMLinkURI(Landroid/content/Context;Landroid/net/Uri;Lcom/umeng/umlink/UMLinkListener;)V
    .registers 16

    const-string v0, "url="

    const-string v1, "wakeup"

    const-string v2, ""

    if-eqz p1, :cond_ab

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_ab

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :try_start_1f
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_39

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "url"

    invoke-virtual {v5, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_39
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8c

    const-string v0, "&"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_46} :catch_8f

    move-object v9, v1

    move-object v6, v2

    const/4 v8, 0x0

    :goto_49
    if-ge v8, v4, :cond_95

    :try_start_4b
    aget-object v10, v0, v8

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_87

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_87

    invoke-virtual {v10, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "_sdk_"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_71

    move-object v2, v10

    goto :goto_84

    :cond_71
    const-string v11, "_linkid_"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7b

    move-object v6, v10

    goto :goto_84

    :cond_7b
    const-string v11, "_scene_"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_84

    move-object v9, v10

    :cond_84
    :goto_84
    invoke-virtual {v5, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_87} :catch_8a

    :cond_87
    add-int/lit8 v8, v8, 0x1

    goto :goto_49

    :catch_8a
    move-exception v0

    goto :goto_92

    :cond_8c
    move-object v9, v1

    move-object v6, v2

    goto :goto_95

    :catch_8f
    move-exception v0

    move-object v9, v1

    move-object v6, v2

    :goto_92
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_95
    :goto_95
    if-eqz v2, :cond_ab

    const-string v0, "umeng"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    invoke-static {p0, v6, p1, v9}, Lcom/umeng/umlink/MobclickLink;->b(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_a8
    invoke-interface {p2, v3, v5}, Lcom/umeng/umlink/UMLinkListener;->onLink(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_ab
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/umeng/umlink/MobclickLink;->a:Landroid/content/Context;

    if-nez v0, :cond_a

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/umlink/MobclickLink;->a:Landroid/content/Context;

    :cond_a
    return-void
.end method
