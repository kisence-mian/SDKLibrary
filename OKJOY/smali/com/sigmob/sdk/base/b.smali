.class public Lcom/sigmob/sdk/base/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "ad"

.field private static final b:Ljava/lang/String; = "close"

.field private static final c:Ljava/lang/String; = "back"

.field private static final d:Ljava/lang/String; = "skip_args_1"

.field private static final e:Ljava/lang/String; = "skip_args_2"

.field private static final f:Ljava/lang/String; = "skip_ad_args"

.field private static final g:Ljava/lang/String; = "close_args"

.field private static final h:Ljava/lang/String; = "close_ad_title"

.field private static final i:Ljava/lang/String; = "close_ad_message"

.field private static final j:Ljava/lang/String; = "close_ad_cancel"

.field private static final k:Ljava/lang/String; = "close_ad_ok"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    const-string v1, "ad"

    const-string v2, "\u5e7f\u544a"

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    const-string v1, "skip_args_1"

    const-string v2, "\u8df3\u8fc7 %d"

    invoke-virtual {v0, v1, v2, p0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    const-string v1, "close"

    const-string v2, "\u5173\u95ed"

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs b([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    const-string v1, "skip_args_2"

    const-string v2, "%d \u8df3\u8fc7"

    invoke-virtual {v0, v1, v2, p0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    const-string v1, "back"

    const-string v2, "\u8fd4\u56de"

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs c([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    const-string v1, "skip_ad_args"

    const-string v2, "\u8df3\u8fc7\u5e7f\u544a %d"

    invoke-virtual {v0, v1, v2, p0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    const-string v1, "close_ad_message"

    const-string v2, "\u8fd8\u5269_SEC_\u79d2\uff0c\u60a8\u5c31\u53ef\u4ee5\u83b7\u5f97\u5956\u52b1\u4e86\u54e6!"

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs d([Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    const-string v1, "close_args"

    const-string v2, "\u5173\u95ed %s"

    invoke-virtual {v0, v1, v2, p0}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    const-string v1, "close_ad_title"

    const-string v2, "\u5173\u95ed\u89c6\u9891?"

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    const-string v1, "close_ad_cancel"

    const-string v2, "\u7ee7\u7eed\u64ad\u653e"

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->E()Lcom/sigmob/sdk/base/common/utils/ClientMetadata;

    move-result-object v0

    const-string v1, "close_ad_ok"

    const-string v2, "\u786e\u5b9a\u5173\u95ed!"

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/sdk/base/common/utils/ClientMetadata;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
