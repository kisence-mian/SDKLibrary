.class Lcom/kwad/sdk/crash/utils/e$b;
.super Lcom/kwad/sdk/crash/utils/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/crash/utils/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Ljava/io/PrintWriter;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kwad/sdk/crash/utils/e$a;-><init>(Lcom/kwad/sdk/crash/utils/e$1;)V

    iput-object p1, p0, Lcom/kwad/sdk/crash/utils/e$b;->a:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/crash/utils/e$b;->a:Ljava/io/PrintWriter;

    return-object v0
.end method

.method a(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/crash/utils/e$b;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method
