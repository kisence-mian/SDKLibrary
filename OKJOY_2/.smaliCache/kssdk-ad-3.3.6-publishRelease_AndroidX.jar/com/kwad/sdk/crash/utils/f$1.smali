.class final Lcom/kwad/sdk/crash/utils/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/crash/utils/f;->a(Lcom/kwad/sdk/crash/model/message/ExceptionMessage;Lcom/kwad/sdk/crash/model/message/MemoryInfo;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/kwad/sdk/crash/model/message/ThreadInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/crash/model/message/ThreadInfo;Lcom/kwad/sdk/crash/model/message/ThreadInfo;)I
    .registers 3

    iget-object p1, p1, Lcom/kwad/sdk/crash/model/message/ThreadInfo;->mName:Ljava/lang/String;

    iget-object p2, p2, Lcom/kwad/sdk/crash/model/message/ThreadInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/kwad/sdk/crash/model/message/ThreadInfo;

    check-cast p2, Lcom/kwad/sdk/crash/model/message/ThreadInfo;

    invoke-virtual {p0, p1, p2}, Lcom/kwad/sdk/crash/utils/f$1;->a(Lcom/kwad/sdk/crash/model/message/ThreadInfo;Lcom/kwad/sdk/crash/model/message/ThreadInfo;)I

    move-result p1

    return p1
.end method
