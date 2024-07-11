.class public Lcom/kwad/sdk/api/loader/h$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/api/loader/h$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/api/loader/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/File;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lcom/kwad/sdk/api/loader/h$b;->a:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public a(ILjava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public a(J)V
    .registers 3

    return-void
.end method

.method public a([BII)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/h$b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/api/loader/h$b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method
