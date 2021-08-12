.class Lcom/sigmob/volley/toolbox/j$a;
.super Ljava/io/FilterInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/volley/toolbox/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;)V
    .registers 3

    invoke-static {p1}, Lcom/sigmob/volley/toolbox/j;->a(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/sigmob/volley/toolbox/j$a;->a:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    iget-object v0, p0, Lcom/sigmob/volley/toolbox/j$a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method
