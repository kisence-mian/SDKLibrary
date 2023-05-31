.class final Lcom/bytedance/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I

.field private static b:Lcom/bytedance/a/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/bytedance/a/c;->a(I)V

    .line 12
    new-instance v0, Lcom/bytedance/a/d$a;

    invoke-direct {v0}, Lcom/bytedance/a/d$a;-><init>()V

    invoke-static {v0}, Lcom/bytedance/a/c;->a(Lcom/bytedance/a/d;)V

    .line 13
    return-void
.end method

.method public static a(I)V
    .registers 1

    .prologue
    .line 24
    sput p0, Lcom/bytedance/a/c;->a:I

    .line 25
    return-void
.end method

.method public static a(Lcom/bytedance/a/d;)V
    .registers 1

    .prologue
    .line 16
    sput-object p0, Lcom/bytedance/a/c;->b:Lcom/bytedance/a/d;

    .line 17
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/bytedance/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 46
    sget-object v0, Lcom/bytedance/a/c;->b:Lcom/bytedance/a/d;

    if-eqz v0, :cond_e

    sget v0, Lcom/bytedance/a/c;->a:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_e

    .line 47
    sget-object v0, Lcom/bytedance/a/c;->b:Lcom/bytedance/a/d;

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    :cond_e
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 66
    sget-object v0, Lcom/bytedance/a/c;->b:Lcom/bytedance/a/d;

    if-eqz v0, :cond_e

    sget v0, Lcom/bytedance/a/c;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_e

    .line 67
    sget-object v0, Lcom/bytedance/a/c;->b:Lcom/bytedance/a/d;

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/a/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    :cond_e
    return-void
.end method
