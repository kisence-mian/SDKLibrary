.class Lcom/tds/tapdb/sdk/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/lang/String; = null

.field private static b:Ljava/lang/String; = null

.field public static final c:Ljava/lang/String; = "event"

.field public static final d:Ljava/lang/String; = "identify"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/tds/common/net/util/HostReplaceUtil;->getInstance()Lcom/tds/common/net/util/HostReplaceUtil;

    move-result-object v0

    const-string v1, "https://e.tapdb.net/"

    invoke-virtual {v0, v1}, Lcom/tds/common/net/util/HostReplaceUtil;->getReplacedHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tds/tapdb/sdk/b;->a:Ljava/lang/String;

    const-string v0, "https://ce.tapdb.net/custom"

    sput-object v0, Lcom/tds/tapdb/sdk/b;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    sput-object p0, Lcom/tds/tapdb/sdk/b;->b:Ljava/lang/String;

    goto :goto_e

    :cond_9
    const-string p0, " set customEventHost error : invalid customEventHost params"

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    :goto_e
    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 10

    const-string v0, "UTF-8"

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tds/tapdb/sdk/b;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "post data to:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  data:  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    :cond_3c
    :goto_3c
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_f4

    const/4 v3, 0x0

    :try_start_41
    invoke-static {p0}, Lcom/tds/tapdb/b/g;->f(Ljava/lang/CharSequence;)Lcom/tds/tapdb/b/g;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/tds/tapdb/b/g;->d(Z)Lcom/tds/tapdb/b/g;

    move-result-object v4

    const-string v5, "Content-Type"

    const-string v6, "application/x-www-form-urlencoded"

    invoke-virtual {v4, v5, v6}, Lcom/tds/tapdb/b/g;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    move-result-object v4

    const/16 v5, 0x1388

    invoke-virtual {v4, v5}, Lcom/tds/tapdb/b/g;->g(I)Lcom/tds/tapdb/b/g;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/tds/tapdb/b/g;->c(I)Lcom/tds/tapdb/b/g;

    move-result-object v4

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\+"

    const-string v7, "%20"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tds/tapdb/b/g;->a([B)Lcom/tds/tapdb/b/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tds/tapdb/b/g;->L()Z

    move-result v3
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_78} :catch_ba

    const-string v5, "post data to: "

    if-eqz v3, :cond_97

    :try_start_7c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " success "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    goto :goto_f4

    :cond_97
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed:   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/tds/tapdb/b/g;->G()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_b9} :catch_ba

    goto :goto_e1

    :catch_ba
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with error:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    :goto_e1
    if-nez v3, :cond_3c

    const-wide/16 v3, 0x1388

    :try_start_e5
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_e8} :catch_ea

    goto/16 :goto_3c

    :catch_ea
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    goto/16 :goto_3c

    :cond_f4
    :goto_f4
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "post data to:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/tds/tapdb/sdk/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  data:  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    :try_start_26
    sget-object v0, Lcom/tds/tapdb/sdk/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/tds/tapdb/b/g;->f(Ljava/lang/CharSequence;)Lcom/tds/tapdb/b/g;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/tds/tapdb/b/g;->d(Z)Lcom/tds/tapdb/b/g;

    move-result-object v0

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v0, v2, v3}, Lcom/tds/tapdb/b/g;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/tds/tapdb/b/g;

    move-result-object v0

    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Lcom/tds/tapdb/b/g;->g(I)Lcom/tds/tapdb/b/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tds/tapdb/b/g;->c(I)Lcom/tds/tapdb/b/g;

    move-result-object v0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tds/tapdb/b/g;->a([B)Lcom/tds/tapdb/b/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->L()Z

    move-result v0
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_55} :catch_9b

    const-string v2, "post data to: "

    if-eqz v0, :cond_76

    :try_start_59
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/tds/tapdb/sdk/b;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " success "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    goto :goto_c4

    :cond_76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/tds/tapdb/sdk/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " failed:   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tds/tapdb/b/g;->G()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_9a} :catch_9b

    goto :goto_c4

    :catch_9b
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tds/tapdb/sdk/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with error:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    :goto_c4
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    sput-object p0, Lcom/tds/tapdb/sdk/b;->a:Ljava/lang/String;

    goto :goto_e

    :cond_9
    const-string p0, " set host error : invalid host params"

    invoke-static {p0}, Lcom/tds/tapdb/b/n;->b(Ljava/lang/String;)V

    :goto_e
    return-void
.end method
