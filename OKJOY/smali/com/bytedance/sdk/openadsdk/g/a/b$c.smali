.class public Lcom/bytedance/sdk/openadsdk/g/a/b$c;
.super Ljava/lang/Object;
.source "GifLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/g/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:[B

.field private final b:Lcom/bytedance/sdk/openadsdk/g/a/b$b;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/bytedance/sdk/adnet/err/VAdError;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/adnet/err/VAdError;Lcom/bytedance/sdk/openadsdk/g/a/b$b;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$c;->e:Lcom/bytedance/sdk/adnet/err/VAdError;

    .line 213
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$c;->b:Lcom/bytedance/sdk/openadsdk/g/a/b$b;

    .line 214
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$c;->c:Ljava/lang/String;

    .line 215
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$c;->d:Ljava/lang/String;

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$c;->a:[B

    .line 217
    return-void
.end method

.method public constructor <init>([BLcom/bytedance/sdk/openadsdk/g/a/b$b;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$c;->a:[B

    .line 205
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$c;->b:Lcom/bytedance/sdk/openadsdk/g/a/b$b;

    .line 206
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$c;->c:Ljava/lang/String;

    .line 207
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$c;->d:Ljava/lang/String;

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/b$c;->e:Lcom/bytedance/sdk/adnet/err/VAdError;

    .line 209
    return-void
.end method
