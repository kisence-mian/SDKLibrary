.class Lcom/sigmob/a/a/b$1;
.super Ljava/io/InputStreamReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/a/a/b;->i()V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/a/a/b;


# direct methods
.method constructor <init>(Lcom/sigmob/a/a/b;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/a/a/b$1;->a:Lcom/sigmob/a/a/b;

    invoke-direct {p0, p2, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method
