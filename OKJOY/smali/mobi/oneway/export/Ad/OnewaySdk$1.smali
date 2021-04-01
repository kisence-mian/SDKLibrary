.class final Lmobi/oneway/export/Ad/OnewaySdk$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/oneway/export/Ad/OnewaySdk;->setDebugMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2

    .prologue
    iput-boolean p1, p0, Lmobi/oneway/export/Ad/OnewaySdk$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-boolean v0, p0, Lmobi/oneway/export/Ad/OnewaySdk$1;->a:Z

    invoke-static {v0}, Lmobi/oneway/export/b/a;->a(Z)V

    return-void
.end method
