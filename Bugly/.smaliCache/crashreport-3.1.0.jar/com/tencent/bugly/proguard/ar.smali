.class public final Lcom/tencent/bugly/proguard/ar;
.super Lcom/tencent/bugly/proguard/k;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/k;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ar;->a:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/tencent/bugly/proguard/ar;->b:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/i;)V
    .registers 4

    .line 37
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ar;->a:Ljava/lang/String;

    .line 38
    invoke-virtual {p1, v1, v1}, Lcom/tencent/bugly/proguard/i;->b(IZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/ar;->b:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/j;)V
    .registers 4

    .line 30
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ar;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 31
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ar;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;I)V

    .line 32
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .registers 3

    .line 43
    return-void
.end method
