.class final Lcom/appsflyer/internal/u$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final AFInAppEventParameterName:Ljava/lang/String;

.field final AFInAppEventType:Ljava/lang/String;

.field final valueOf:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/appsflyer/internal/u$a;->AFInAppEventType:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/appsflyer/internal/u$a;->valueOf:Ljava/lang/String;

    .line 116
    iput-object p3, p0, Lcom/appsflyer/internal/u$a;->AFInAppEventParameterName:Ljava/lang/String;

    .line 117
    return-void
.end method
