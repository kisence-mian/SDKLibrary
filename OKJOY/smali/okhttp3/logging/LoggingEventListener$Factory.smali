.class public Lokhttp3/logging/LoggingEventListener$Factory;
.super Ljava/lang/Object;
.source "LoggingEventListener.java"

# interfaces
.implements Lokhttp3/EventListener$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/logging/LoggingEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private final logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 166
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->DEFAULT:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    invoke-direct {p0, v0}, Lokhttp3/logging/LoggingEventListener$Factory;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V
    .registers 2
    .param p1, "logger"    # Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lokhttp3/logging/LoggingEventListener$Factory;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 171
    return-void
.end method


# virtual methods
.method public create(Lokhttp3/Call;)Lokhttp3/EventListener;
    .registers 5
    .param p1, "call"    # Lokhttp3/Call;

    .prologue
    .line 175
    new-instance v0, Lokhttp3/logging/LoggingEventListener;

    iget-object v1, p0, Lokhttp3/logging/LoggingEventListener$Factory;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lokhttp3/logging/LoggingEventListener;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;Lokhttp3/logging/LoggingEventListener$1;)V

    return-object v0
.end method
