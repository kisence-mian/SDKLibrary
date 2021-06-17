.class final Lcom/tapjoy/internal/hn$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/ay;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/hn;-><init>(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tapjoy/internal/ay<",
        "Lcom/tapjoy/internal/ew;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/hn;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/hn;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/tapjoy/internal/hn$1;->a:Lcom/tapjoy/internal/hn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .registers 5

    .line 31
    check-cast p2, Lcom/tapjoy/internal/ew;

    .line 2034
    sget-object v0, Lcom/tapjoy/internal/ew;->c:Lcom/tapjoy/internal/ek;

    .line 2164
    const-string v1, "value == null"

    invoke-static {p2, v1}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2165
    const-string v1, "stream == null"

    invoke-static {p1, v1}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2166
    invoke-static {p1}, Lcom/tapjoy/internal/ix;->a(Ljava/io/OutputStream;)Lcom/tapjoy/internal/jd;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/internal/ix;->a(Lcom/tapjoy/internal/jd;)Lcom/tapjoy/internal/iu;

    move-result-object p1

    .line 2167
    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/iu;Ljava/lang/Object;)V

    .line 2168
    invoke-interface {p1}, Lcom/tapjoy/internal/iu;->a()Lcom/tapjoy/internal/iu;

    .line 31
    return-void
.end method

.method public final synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 4

    .line 31
    nop

    .line 1039
    sget-object v0, Lcom/tapjoy/internal/ew;->c:Lcom/tapjoy/internal/ek;

    .line 1188
    const-string v1, "stream == null"

    invoke-static {p1, v1}, Lcom/tapjoy/internal/ej;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1189
    invoke-static {p1}, Lcom/tapjoy/internal/ix;->a(Ljava/io/InputStream;)Lcom/tapjoy/internal/je;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/internal/ix;->a(Lcom/tapjoy/internal/je;)Lcom/tapjoy/internal/iv;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/ek;->a(Lcom/tapjoy/internal/iv;)Ljava/lang/Object;

    move-result-object p1

    .line 1039
    check-cast p1, Lcom/tapjoy/internal/ew;

    .line 31
    return-object p1
.end method
