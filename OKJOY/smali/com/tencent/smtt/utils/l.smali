.class final Lcom/tencent/smtt/utils/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/smtt/utils/k$b;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/smtt/utils/l;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/lang/String;)Z
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/tencent/smtt/utils/l;->a:Ljava/lang/String;

    invoke-static {p1, p2, v0, p3}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/InputStream;Ljava/util/zip/ZipEntry;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    return v0

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "copyFileIfChanged Exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
