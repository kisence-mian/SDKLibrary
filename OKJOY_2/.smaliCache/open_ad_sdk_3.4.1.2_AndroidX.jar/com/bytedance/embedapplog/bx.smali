.class public final Lcom/bytedance/embedapplog/bx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I

.field private static b:Lcom/bytedance/embed_dr/DrLogWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/bytedance/embedapplog/bx;->a(I)V

    .line 12
    new-instance v0, Lcom/bytedance/embed_dr/DrLogWriter$a;

    invoke-direct {v0}, Lcom/bytedance/embed_dr/DrLogWriter$a;-><init>()V

    invoke-static {v0}, Lcom/bytedance/embedapplog/bx;->a(Lcom/bytedance/embed_dr/DrLogWriter;)V

    .line 13
    return-void
.end method

.method public static a(I)V
    .registers 1

    .line 24
    sput p0, Lcom/bytedance/embedapplog/bx;->a:I

    .line 25
    return-void
.end method

.method public static a(Lcom/bytedance/embed_dr/DrLogWriter;)V
    .registers 1

    .line 16
    sput-object p0, Lcom/bytedance/embedapplog/bx;->b:Lcom/bytedance/embed_dr/DrLogWriter;

    .line 17
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 32
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/bytedance/embedapplog/bx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 36
    sget-object v0, Lcom/bytedance/embedapplog/bx;->b:Lcom/bytedance/embed_dr/DrLogWriter;

    if-eqz v0, :cond_c

    sget v1, Lcom/bytedance/embedapplog/bx;->a:I

    const/4 v2, 0x2

    if-gt v1, v2, :cond_c

    .line 37
    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/embed_dr/DrLogWriter;->logV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    :cond_c
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 42
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/bytedance/embedapplog/bx;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 46
    sget-object v0, Lcom/bytedance/embedapplog/bx;->b:Lcom/bytedance/embed_dr/DrLogWriter;

    if-eqz v0, :cond_c

    sget v1, Lcom/bytedance/embedapplog/bx;->a:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_c

    .line 47
    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/embed_dr/DrLogWriter;->logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    :cond_c
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 62
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/bytedance/embedapplog/bx;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 66
    sget-object v0, Lcom/bytedance/embedapplog/bx;->b:Lcom/bytedance/embed_dr/DrLogWriter;

    if-eqz v0, :cond_c

    sget v1, Lcom/bytedance/embedapplog/bx;->a:I

    const/4 v2, 0x6

    if-gt v1, v2, :cond_c

    .line 67
    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/embed_dr/DrLogWriter;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    :cond_c
    return-void
.end method
