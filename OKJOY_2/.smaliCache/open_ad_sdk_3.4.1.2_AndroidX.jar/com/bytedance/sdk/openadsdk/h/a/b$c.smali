.class public Lcom/bytedance/sdk/openadsdk/h/a/b$c;
.super Ljava/lang/Object;
.source "GifLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/h/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:[B

.field private final b:Lcom/bytedance/sdk/openadsdk/h/a/b$b;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/bytedance/sdk/adnet/err/VAdError;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/adnet/err/VAdError;Lcom/bytedance/sdk/openadsdk/h/a/b$b;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$c;->e:Lcom/bytedance/sdk/adnet/err/VAdError;

    .line 230
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$c;->b:Lcom/bytedance/sdk/openadsdk/h/a/b$b;

    .line 231
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$c;->c:Ljava/lang/String;

    .line 232
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$c;->d:Ljava/lang/String;

    .line 233
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$c;->a:[B

    .line 234
    return-void
.end method

.method public constructor <init>([BLcom/bytedance/sdk/openadsdk/h/a/b$b;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$c;->a:[B

    .line 222
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$c;->b:Lcom/bytedance/sdk/openadsdk/h/a/b$b;

    .line 223
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$c;->c:Ljava/lang/String;

    .line 224
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$c;->d:Ljava/lang/String;

    .line 225
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a/b$c;->e:Lcom/bytedance/sdk/adnet/err/VAdError;

    .line 226
    return-void
.end method
