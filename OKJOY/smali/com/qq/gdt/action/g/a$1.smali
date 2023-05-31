.class final Lcom/qq/gdt/action/g/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qq/gdt/action/d/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/gdt/action/g/a;->a(Lorg/json/JSONArray;ZLcom/qq/gdt/action/d/b/b;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qq/gdt/action/d/b/i;)V
    .registers 3

    invoke-virtual {p1}, Lcom/qq/gdt/action/d/b/i;->e()Lcom/qq/gdt/action/d/b/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qq/gdt/action/d/b/j;->close()V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0a\u62a5Dp3\u65f6\u53d1\u751f\u9519\u8bef\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/qq/gdt/action/h/l;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
