.class Lcom/facebook/appevents/FacebookTimeSpentData$SerializationProxyV2;
.super Ljava/lang/Object;
.source "FacebookTimeSpentData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/FacebookTimeSpentData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationProxyV2"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6L


# instance fields
.field private final firstOpenSourceApplication:Ljava/lang/String;

.field private final interruptionCount:I

.field private final lastResumeTime:J

.field private final lastSuspendTime:J

.field private final millisecondsSpentInSession:J


# direct methods
.method constructor <init>(JJJILjava/lang/String;)V
    .registers 9
    .param p1, "lastResumeTime"    # J
    .param p3, "lastSuspendTime"    # J
    .param p5, "millisecondsSpentInSession"    # J
    .param p7, "interruptionCount"    # I
    .param p8, "firstOpenSourceApplication"    # Ljava/lang/String;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-wide p1, p0, Lcom/facebook/appevents/FacebookTimeSpentData$SerializationProxyV2;->lastResumeTime:J

    .line 156
    iput-wide p3, p0, Lcom/facebook/appevents/FacebookTimeSpentData$SerializationProxyV2;->lastSuspendTime:J

    .line 157
    iput-wide p5, p0, Lcom/facebook/appevents/FacebookTimeSpentData$SerializationProxyV2;->millisecondsSpentInSession:J

    .line 158
    iput p7, p0, Lcom/facebook/appevents/FacebookTimeSpentData$SerializationProxyV2;->interruptionCount:I

    .line 159
    iput-object p8, p0, Lcom/facebook/appevents/FacebookTimeSpentData$SerializationProxyV2;->firstOpenSourceApplication:Ljava/lang/String;

    .line 160
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 12

    .line 163
    new-instance v10, Lcom/facebook/appevents/FacebookTimeSpentData;

    iget-wide v1, p0, Lcom/facebook/appevents/FacebookTimeSpentData$SerializationProxyV2;->lastResumeTime:J

    iget-wide v3, p0, Lcom/facebook/appevents/FacebookTimeSpentData$SerializationProxyV2;->lastSuspendTime:J

    iget-wide v5, p0, Lcom/facebook/appevents/FacebookTimeSpentData$SerializationProxyV2;->millisecondsSpentInSession:J

    iget v7, p0, Lcom/facebook/appevents/FacebookTimeSpentData$SerializationProxyV2;->interruptionCount:I

    iget-object v8, p0, Lcom/facebook/appevents/FacebookTimeSpentData$SerializationProxyV2;->firstOpenSourceApplication:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/facebook/appevents/FacebookTimeSpentData;-><init>(JJJILjava/lang/String;Lcom/facebook/appevents/FacebookTimeSpentData$1;)V

    return-object v10
.end method
