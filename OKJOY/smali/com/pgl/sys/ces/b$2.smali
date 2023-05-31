.class Lcom/pgl/sys/ces/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pgl/sys/a/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pgl/sys/ces/b;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pgl/sys/ces/b;


# direct methods
.method constructor <init>(Lcom/pgl/sys/ces/b;)V
    .registers 2

    iput-object p1, p0, Lcom/pgl/sys/ces/b$2;->a:Lcom/pgl/sys/ces/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/pgl/sys/ces/b;->a(Z)Z

    return-void
.end method
