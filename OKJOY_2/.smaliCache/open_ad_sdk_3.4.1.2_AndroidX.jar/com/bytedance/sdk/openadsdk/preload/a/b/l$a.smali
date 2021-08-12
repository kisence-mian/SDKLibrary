.class final Lcom/bytedance/sdk/openadsdk/preload/a/b/l$a;
.super Ljava/io/Writer;
.source "Streams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/preload/a/b/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/preload/a/b/l$a$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Appendable;

.field private final b:Lcom/bytedance/sdk/openadsdk/preload/a/b/l$a$a;


# direct methods
.method constructor <init>(Ljava/lang/Appendable;)V
    .registers 3

    .line 88
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 86
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/l$a$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/a/b/l$a$a;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/l$a;->b:Lcom/bytedance/sdk/openadsdk/preload/a/b/l$a$a;

    .line 89
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/l$a;->a:Ljava/lang/Appendable;

    .line 90
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .line 102
    return-void
.end method

.method public flush()V
    .registers 1

    .line 101
    return-void
.end method

.method public write(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/l$a;->a:Ljava/lang/Appendable;

    int-to-char p1, p1

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 99
    return-void
.end method

.method public write([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/l$a;->b:Lcom/bytedance/sdk/openadsdk/preload/a/b/l$a$a;

    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/preload/a/b/l$a$a;->a:[C

    .line 94
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/l$a;->a:Ljava/lang/Appendable;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/a/b/l$a;->b:Lcom/bytedance/sdk/openadsdk/preload/a/b/l$a$a;

    add-int/2addr p3, p2

    invoke-interface {p1, v0, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 95
    return-void
.end method
