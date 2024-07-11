.class final Lcom/appsflyer/internal/a$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# static fields
.field static final values:Lcom/appsflyer/internal/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 98
    new-instance v0, Lcom/appsflyer/internal/a;

    invoke-direct {v0}, Lcom/appsflyer/internal/a;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/a$c;->values:Lcom/appsflyer/internal/a;

    return-void
.end method
