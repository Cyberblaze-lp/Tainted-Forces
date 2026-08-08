#sideonly client
import crafttweaker.world.IBlockPos;
import crafttweaker.block.IBlock;
import crafttweaker.util.Math;
import crafttweaker.data.IData;
import crafttweaker.player.IPlayer;
import crafttweaker.world.IWorld;
import native.extendedrenderer.particle.entity.EntityRotFX;
import native.extendedrenderer.particle.behavior.ParticleBehaviors;
import native.extendedrenderer.render.RotatingParticleManager;
import native.extendedrenderer.particle.behavior.ParticleBehaviorFog;
import native.CoroUtil.util.Vec3;
import native.weather2.ClientTickHandler;
import native.extendedrenderer.particle.ParticleRegistry;
import mods.zenutils.NetworkHandler;
import mods.zenutils.IByteBuf;

//Setting up the packet
NetworkHandler.registerServer2ClientMessage("spawn_condensation_cloud", function(player as IPlayer, byteBuf as IByteBuf){
    addCloudsClient(client.player.world, byteBuf.readBlockPos());
});

function addCloudsClient (world as IWorld, pos as IBlockPos) as void
{
    if isNull(ClientTickHandler.weatherManager){
        return;
    }
    val yfactor as float = 2.9f;
    val maxLifetime as int= 1600;
    val random = mods.ctutils.utils.Math.getRandom();
    val icon =ParticleRegistry.cloud256;
    val offset as IBlockPos = pos;
    var vec = Vec3(offset);
    var pb = ParticleBehaviorFog(vec);
    
    val cloud = pb.spawnNewParticleIconFX(world.native, icon, offset.x as double, offset.y as double, offset.z as double, 0.0d, 5.0d, 0.0d, 1);
    cloud.rotationPitch = random.nextInt(0, 314) as float / 100.0f;
    pb.initParticle(cloud);
    pb.particles.add(cloud);
    cloud.spawnAsWeatherEffect();
    cloud.setGravity(-0.3f*yfactor);
    cloud.setFacePlayer(true);

    cloud.setScale(145.0f + random.nextInt(0, 20) as float );
    ClientTickHandler.weatherManager.addWeatheredParticle(cloud);

    
    client.catenation()
        .then(function(world, context){
            context.data = 0 as IData;
        })
        .sleepUntil(function(world, context){
            val counter = context.data.asInt();
            cloud.setGravity(-yfactor/(1.5f+counter as float));
            cloud.setScale(155.0f+((counter as float)*0.6f as int)as float);
            if counter > 150
            {

                cloud.func_82338_g(mods.ctutils.utils.Math.exp(0.5,(150.0f/counter as float)));
            }

            context.data =  (counter + random.nextInt(0, 2)) as IData;
            return (counter > maxLifetime);
        })
        .then(function(world, context){
            cloud.startDeath();
        })
        .start();
}
    